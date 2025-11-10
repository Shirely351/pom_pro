#!/usr/bin/env bash
set -euo pipefail

### ==== 可按需修改的参数（默认已按你的仓库配置好） ====
MAIN_REMOTE="git@github.com:Shirely351/pom_base.git"
SUBMODULE_PATH="scalehls"
SUBMODULE_REMOTE="git@github.com:Shirely351/scalehls.git"
MAIN_BRANCH="${MAIN_BRANCH:-main}"   # 如需切换为 master，自行 export MAIN_BRANCH=master
ADD_GITIGNORE_ROOT=1                 # 生成主仓 .gitignore（已包含常见构建产物）
ADD_GITIGNORE_SUB=1                  # 生成子模块 .gitignore（构建产物忽略）
PUSH_ALL_BRANCHES=0                  # 是否顺带推送所有分支
### ================================================

echo "==> 检查是否在 git 仓库根目录..."
git rev-parse --show-toplevel >/dev/null

ROOT_DIR="$(git rev-parse --show-toplevel)"
cd "$ROOT_DIR"

CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$CURRENT_BRANCH" != "$MAIN_BRANCH" ]]; then
  echo "==> 当前分支是 '$CURRENT_BRANCH'，目标分支是 '$MAIN_BRANCH'。"
  echo "    将尝试切换：git checkout $MAIN_BRANCH（若不存在请自行创建并合并）"
  git checkout "$MAIN_BRANCH" 2>/dev/null || true
fi

echo "==> 检查子模块配置..."
if ! test -f .gitmodules; then
  echo "错误：未找到 .gitmodules，当前项目似乎未使用子模块。"
  exit 1
fi

if ! git config -f .gitmodules --get-regexp '^submodule\.' >/dev/null; then
  echo "错误：.gitmodules 中未检测到任何子模块条目。"
  exit 1
fi

if ! git config -f .gitmodules --get "submodule.${SUBMODULE_PATH}.url" >/dev/null; then
  echo "错误：未在 .gitmodules 中找到 submodule '${SUBMODULE_PATH}'。"
  echo "现有子模块列表："
  git config -f .gitmodules --get-regexp '^submodule\..*\.path' || true
  exit 1
fi

echo "==> 初始化并更新子模块（防止未拉全）..."
git submodule update --init --recursive

### 子模块处理：设置 origin 到你的 fork，并提交/推送改动
echo "==> 进入子模块：${SUBMODULE_PATH}"
pushd "$SUBMODULE_PATH" >/dev/null

echo "==> 设置子模块 origin 到 ${SUBMODULE_REMOTE}"
git remote set-url origin "$SUBMODULE_REMOTE"

if [[ "$ADD_GITIGNORE_SUB" == "1" ]]; then
  echo "==> 写入子模块 .gitignore（构建产物忽略）"
  cat > .gitignore << 'EOF'
.cache/
build/
build-*/
.vivado/
.vitis/
.xilinx/
*.log
*.tmp
*.swp
*.zip
*.tar.gz
*.xz
*.xclbin
*.bit
*.bin
*.jou
*.str
reports/
runs/
.cache*
EOF
  git add .gitignore || true
fi

echo "==> 子模块状态："
git status --porcelain

# 若有变更则提交
if [[ -n "$(git status --porcelain)" ]]; then
  git add -A
  git commit -m "submodule: local modifications"
  echo "==> 推送子模块到 ${SUBMODULE_REMOTE}"
  git push -u origin HEAD
else
  echo "==> 子模块无需提交；确保已有可推送的远程。"
  # 若本地分支未与远程建立跟踪，尝试推送建立
  git rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>&1 || git push -u origin HEAD || true
fi

SUBMODULE_COMMIT="$(git rev-parse HEAD)"
popd >/dev/null

### 主仓：更新 .gitmodules 的 URL，记录子模块指针
echo "==> 更新主仓 .gitmodules 中 ${SUBMODULE_PATH} 的 url 为 ${SUBMODULE_REMOTE}"
git config -f .gitmodules "submodule.${SUBMODULE_PATH}.url" "$SUBMODULE_REMOTE"

echo "==> 记录子模块指针与 .gitmodules 改动"
git add .gitmodules "$SUBMODULE_PATH"

if [[ "$ADD_GITIGNORE_ROOT" == "1" ]]; then
  echo "==> 写入主仓 .gitignore（常见构建产物与大文件）"
  cat > .gitignore << 'EOF'
# 通用
.cache/
core
*.log
*.tmp
*.swp

# 构建/工具
build/
build-*/
.vivado/
.vitis/
.xilinx/
reports/
runs/
.vscode/
.idea/

# 大文件/位流
*.zip
*.tar.gz
*.xz
*.xclbin
*.bit
*.bin
*.jou
*.str

# 数据/中间结果（按需修订）
*.npy
*.csv
*.pt
*.onnx
*.pb
EOF
  git add .gitignore || true
fi

if [[ -n "$(git status --porcelain)" ]]; then
  git commit -m "chore(repo): point submodule '${SUBMODULE_PATH}' to my fork and record pointer ${SUBMODULE_COMMIT}"
else
  echo "==> 主仓无新增改动需要提交。"
fi

### 主仓：更换远程并推送
echo "==> 设置主仓 origin 为 ${MAIN_REMOTE}"
git remote set-url origin "$MAIN_REMOTE"

echo "==> 推送主仓（含按需子模块）到 ${MAIN_REMOTE}"
git push --recurse-submodules=on-demand -u origin "$MAIN_BRANCH"

if [[ "$PUSH_ALL_BRANCHES" == "1" ]]; then
  echo "==> 额外推送所有分支与标签"
  git push origin --all || true
fi

echo "==> 推送标签（如有）"
git push origin --tags || true

### 验证信息
echo
echo "==== 迁移完成，验证建议 ===="
echo "1) 子模块当前指针："
git submodule status
echo
echo "2) 子模块差异检查（应为空）："
git diff --submodule || true
echo
echo "3) .gitmodules 当前内容（应指向你的 fork）："
cat .gitmodules
echo
echo "4) 重新克隆验证（示例）："
echo "   git clone --recurse-submodules ${MAIN_REMOTE} pom_base_check"
echo
echo "✅ 完成。主仓 -> ${MAIN_REMOTE}；子模块(${SUBMODULE_PATH}) -> ${SUBMODULE_REMOTE}"

