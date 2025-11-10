# start_time=$(date +"%s")

# echo ""
# echo ">>> Step 3. Collecting experimental results..."
# echo ""

# declare -A baseline_latency
# baseline_latency["gemm",32]=498753
# baseline_latency["gemm",64]=3960961
# baseline_latency["gemm",128]=31572225
# baseline_latency["gemm",256]=252117505
# baseline_latency["gemm",512]=2015101953
# baseline_latency["gemm",1024]=19337840641
# baseline_latency["gemm",2048]=154660769793
# baseline_latency["gemm",4096]=1237118361601
# baseline_latency["gemm",8192]=9896275755009

# baseline_latency["bicg",32]=12353
# baseline_latency["bicg",64]=49281
# baseline_latency["bicg",128]=196865
# baseline_latency["bicg",256]=786945
# baseline_latency["bicg",512]=3146753
# baseline_latency["bicg",1024]=14682113
# baseline_latency["bicg",2048]=58724353
# baseline_latency["bicg",4096]=234889217
# baseline_latency["bicg",8192]=939540481

# baseline_latency["gesummv",32]=12705
# baseline_latency["gesummv",64]=49985
# baseline_latency["gesummv",128]=198273
# baseline_latency["gesummv",256]=789761
# baseline_latency["gesummv",512]=3152385
# baseline_latency["gesummv",1024]=14693377
# baseline_latency["gesummv",2048]=58746881
# baseline_latency["gesummv",4096]=234934273
# baseline_latency["gesummv",8192]=939630593

# baseline_latency["2mm",32]=697474
# baseline_latency["2mm",64]=5542146
# baseline_latency["2mm",128]=44188162
# baseline_latency["2mm",256]=352912386
# baseline_latency["2mm",512]=2820933634
# baseline_latency["2mm",1024]=29004664834
# baseline_latency["2mm",2048]=231982768130
# baseline_latency["2mm",4096]=2199241375746
# baseline_latency["2mm",8192]=17593058492418

# baseline_latency["3mm",32]=1087683
# baseline_latency["3mm",64]=8675715
# baseline_latency["3mm",128]=69305091
# baseline_latency["3mm",256]=554042883
# baseline_latency["3mm",512]=4430760963
# baseline_latency["3mm",1024]=45106599939
# baseline_latency["3mm",2048]=360815013891
# baseline_latency["3mm",4096]=2886369042435
# baseline_latency["3mm",8192]=23090348212227


# baseline_latency["jacobi",4096]=804925441
# baseline_latency["jacobi2d",4096]=4668429217793
# baseline_latency["heat",4096]=385699841
# baseline_latency["seidel",4096]=4050540986369
# baseline_latency["blur",4096]=3981925375233
# baseline_latency["edgeDetect",4096]=2882880170
# baseline_latency["gaussian",4096]=8694375278
# baseline_latency["blur",4096]=2983445186
# baseline_latency["vgg16",512]=3727670833
# baseline_latency["resnet",512]=6602277677

# declare -A execution_times




# kernels=("3mm" )
# # sizes=(32 64 128 256 512 1024 2048 4096 8192)
# sizes=(32 64  256  1024 2048)

# result_file=" ${kernels[@]}_results.csv"
# if [ -f $result_file ]; then
#     rm $result_file
# fi
# printf ">>> Results for ${kernels[@]}\n" >> $result_file
# printf "\n" >> $result_file
# printf "%-20s %-25s %-20s %-20s %-20s %-15s %-15s\n" "Kernel" "Latency" "DSP" "FF" "LUT" "II" "Execution Time">> $result_file
# # rm -f $result_file

# for kernel in "${kernels[@]}"
# do
#     for size in "${sizes[@]}"
#     do
#         xml_file="samples/${kernel}/test_${kernel}_${size}/test_${kernel}_${size}/syn/report/csynth.xml"
#         baseline=${baseline_latency[$kernel,$size]}
#         best_case_latency=$(xmlstarlet sel -t -v "/profile/PerformanceEstimates/SummaryOfOverallLatency/Best-caseLatency" $xml_file)
#         acceleration=$(awk "BEGIN {printf \"%.1f\", $baseline / $best_case_latency}")
#         acceleration_str="$acceleration x"
#         latency_str="$best_case_latency($acceleration_str)"
#         lut_util=$(xmlstarlet sel -t -v "/profile/AreaEstimates/Resources/LUT" $xml_file)
#         lut_avail=$(xmlstarlet sel -t -v "/profile/AreaEstimates/AvailableResources/LUT" $xml_file)
#         lut_percent=$((($lut_util * 100) / $lut_avail))
#         lut_str="$lut_util($lut_percent%)"
#         dsp_util=$(xmlstarlet sel -t -v "/profile/AreaEstimates/Resources/DSP" $xml_file)
#         dsp_avail=$(xmlstarlet sel -t -v "/profile/AreaEstimates/AvailableResources/DSP" $xml_file)
#         dsp_percent=$((($dsp_util * 100) / $dsp_avail))
#         dsp_str="$dsp_util($dsp_percent%)"
#         ff_util=$(xmlstarlet sel -t -v "/profile/AreaEstimates/Resources/FF" $xml_file)
#         ff_avail=$(xmlstarlet sel -t -v "/profile/AreaEstimates/AvailableResources/FF" $xml_file)
#         ff_percent=$((($ff_util * 100) / $ff_avail))
#         ff_str="$ff_util($ff_percent%)"
#         II=$(grep -m 1 -oP '(?<=<PipelineII>).*?(?=<\/PipelineII>)' $xml_file)
#         time=${execution_times[$kernel,$size]}
#         time_str="$time s"

#         printf "%-20s %-25s %-20s %-20s %-20s %-15s %-15s\n" "${kernel}_${size}" "${latency_str}" "$dsp_str" "$ff_str" "$lut_str" "$II" "$time_str" >> $result_file
#     done
#     printf "\n" >> $result_file
# done
# printf "\n" >> $result_file
# printf "\n" >> $result_file




#!/usr/bin/env bash
# 文件名：update_pipeline_ii.sh
set -euo pipefail

TARGET_DIR="/home/yuyes/workdir/pom/samples/2mm"

echo "[1/3] 目标目录：$TARGET_DIR"
echo "[2/3] 预览将被修改的行（若无输出表示没有 II=1 的 pipeline 行）："
grep -RIn --color=always '^[[:space:]]*#pragma[[:space:]]\+HLS[[:space:]]\+pipeline.*\bII[[:space:]]*=[[:space:]]*1\b' "$TARGET_DIR" || true
echo

echo "[3/3] 执行替换：II=1 -> II=8（仅 pipeline 的 pragma 行），并生成 .bak 备份"
find "$TARGET_DIR" -type f -name '*.cpp' -exec \
  sed -i.bak -E '/^[[:space:]]*#pragma[[:space:]]+HLS[[:space:]]+pipeline/ s/\bII[[:space:]]*=[[:space:]]*1\b/II=8/g' {} +

echo
echo "校验：确认没有残留 II=1（若无输出即全部替换完成）"
grep -RIn --color=always '^[[:space:]]*#pragma[[:space:]]\+HLS[[:space:]]\+pipeline.*\bII[[:space:]]*=[[:space:]]*1\b' "$TARGET_DIR" || echo "✅ 没有残留 II=1"

echo "提示：如需回滚，可用生成的 .bak 备份文件。"
