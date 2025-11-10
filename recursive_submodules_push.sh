#!/usr/bin/env bash
set -euo pipefail

# ================== 可调参数（也可通过命令行覆盖） ==================
MAIN_BRANCH="${MAIN_BRANCH:-main}"
DEFAULT_USER="${DEFAULT_USER:-Shirely351}"
# 是否尝试自动改写子模块 origin -> git@github.com:${DEFAULT_USER}/${repo}.git
REWRITE_SUBMODULE_ORIGIN="${REWRITE_SUBMODULE_ORIGIN:-1}"
# 默认本地分支名前缀（用于 detached 时自动建分支）
LOCAL_BRANCH_PREFIX="${LOCAL_BRANCH_PREFIX:-shirely/local-mods}"
# ===============================================================

declare -A SUB_REMOTE_MAP
MAIN_REMOTE=""

usage() {
  cat <<EOF
Usage: $0 [--main-remote <url>] [--sub-remote <path=url>] ...

Options:
  --main-remote URL                 主仓库 origin 的目标 URL（可选）
  --sub-remote PATH=URL             指定某个子模块(含嵌套)的 origin URL，例如：
                                    --sub-remote scalehls=git@github.com:${DEFAULT_USER}/scalehls.git
                                    --sub-remote scalehls/polygeist=git@github.com:${DEFAULT_USER}/polygeist.git
  --no-rewrite                      不自动改写子模块 origin（只在你显式 --sub-remote 时改）
  --branch BR                       主仓分支名（默认：${MAIN_BRANCH})

环境变量：
  MAIN_BRANCH, DEFAULT_USER, REWRITE_SUBMODULE_ORIGIN, LOCAL_BRANCH_PREFIX
EOF
  exit 1
}

# 解析参数
while [[ $# -gt 0 ]]; do
  case "$1" in
    --main-remote)
      MAIN_REMOTE="$2"; shift 2;;
    --sub-remote)
      pair="$2"; shift 2
      path="${pair%%=*}"; url="${pair#*=}"
      SUB_REMOTE_MAP["$path"]="$url";;
    --no-rewrite)
      REWRITE_SUBMODULE_ORIGIN=0; shift;;
    --branch)
      MAIN_BRANCH="$2"; shift 2;;
    -h|--help)
      usage;;
    *)
      echo "Unknown arg: $1"; usage;;
  esac
done

### 工具函数
timestamp() { date +%Y%m%d%H%M%S; }

ensure_git_root() {
  git rev-parse --show-toplevel >/dev/null
}

# 根据当前子模块 origin 推断出 <repo>.git
# eg: https://github.com/ORG/scalehls.git -> scalehls.git
repo_name_from_remote() {
  local url="$1"
  local base="${url##*/}"
  echo "${base%.git}.git"
}

# 为子模块决定要设置的 origin
choose_sub_remote() {
  local subpath="$1"
  local current_url
  current_url="$(git -C "$subpath" remote get-url origin)"
  if [[ -n "${SUB_REMOTE_MAP[$subpath]:-}" ]]; then
    echo "${SUB_REMOTE_MAP[$subpath]}"
    return
  fi
  if [[ "$REWRITE_SUBMODULE_ORIGIN" == "1" ]]; then
    local repo_git; repo_git="$(repo_name_from_remote "$current_url")"
    echo "git@github.com:${DEFAULT_USER}/${repo_git%.git}.git"
    return
  fi
  echo "$current_url"
}

# 在某个 git 目录中：若是 detached，则自动建分支
ensure_on_branch() {
  local repo_dir="$1"
  local curbranch
  curbranch="$(git -C "$repo_dir" rev-parse --abbrev-ref HEAD || true)"
  if [[ "$curbranch" == "HEAD" ]]; then
    local newb="${LOCAL_BRANCH_PREFIX}-$(timestamp)"
    echo "  - [$repo_dir] detached HEAD，创建并切换到分支：$newb"
    git -C "$repo_dir" checkout -b "$newb" >/dev/null
    echo "$newb"
  else
    echo "$curbranch"
  fi
}

# 提交并推送当前仓库（假定已在某个分支）
commit_and_push() {
  local repo_dir="$1"
  local msg="$2"
  local branch; branch="$(git -C "$repo_dir" rev-parse --abbrev-ref HEAD)"
  if [[ -n "$(git -C "$repo_dir" status --porcelain)" ]]; then
    git -C "$repo_dir" add -A
    git -C "$repo_dir" commit -m "$msg" >/dev/null || true
  fi
  git -C "$repo_dir" push -u origin "$branch"
}

# 记录 .gitmodules 的 branch 字段，并在主仓提交子模块指针
record_branch_and_pointer() {
  local subpath="$1"
  local branch="$2"
  git config -f .gitmodules "submodule.${subpath}.branch" "$branch"
  git add .gitmodules "$subpath"
  git commit -m "chore: track submodule '${subpath}' on branch '${branch}' and update pointer" >/dev/null || true
}

### 开始执行
ensure_git_root
ROOT="$(git rev-parse --show-toplevel)"
cd "$ROOT"

echo "==> 仓库根：$ROOT"
echo "==> 主分支：$MAIN_BRANCH"

# 确保主分支
if [[ "$(git rev-parse --abbrev-ref HEAD)" != "$MAIN_BRANCH" ]]; then
  git checkout "$MAIN_BRANCH" 2>/dev/null || true
fi

# 初始化并递归拉全子模块
git submodule update --init --recursive

# 获取所有子模块（含嵌套）
mapfile -t SUBMODULES < <(git config -f .gitmodules --get-regexp '^submodule\..*\.path' | awk '{print $NF}')

# 先处理最深层（确保嵌套从里到外都推干净）
# 通过路径长度排序，路径更长的（嵌套更深）优先
IFS=$'\n' SUBMODULES_SORTED=($(for p in "${SUBMODULES[@]}"; do
  echo "$(awk -v p="$p" 'BEGIN{print length(p), p}')"
done | sort -nr | awk '{print $2}'))
unset IFS

for sub in "${SUBMODULES_SORTED[@]}"; do
  echo "==> 处理子模块：$sub"
  # 设置 origin
  target_remote="$(choose_sub_remote "$sub")"
  echo "  - 设定 origin: $target_remote"
  git -C "$sub" remote set-url origin "$target_remote"

  # 确保在分支上（如 detached 则建分支）
  curb="$(ensure_on_branch "$sub")"
  echo "  - 当前/新分支：$curb"

  # 提交并推送该子模块
  echo "  - 提交并推送子模块改动（如有）"
  commit_and_push "$sub" "submodule(${sub}): local modifications"

  # 回到主仓：记录该子模块 branch 并更新指针
  record_branch_and_pointer "$sub" "$curb"
done

# 处理主仓远程与推送
if [[ -n "$MAIN_REMOTE" ]]; then
  echo "==> 将主仓 origin 指向：$MAIN_REMOTE"
  git remote set-url origin "$MAIN_REMOTE"
fi

echo "==> 推送主仓（含按需子模块）到 origin/$MAIN_BRANCH"
git push --recurse-submodules=on-demand -u origin "$MAIN_BRANCH"

echo "==> （可选）推送所有分支与标签"
git push origin --all || true
git push origin --tags || true

echo
echo "==== 完成 ===="
echo "建议检验："
echo "  1) git submodule status"
echo "  2) cat .gitmodules   # 应包含每个子模块的 url 与 branch"
echo "  3) 试克隆：git clone --recurse-submodules \$(git remote get-url origin) repo_check"

