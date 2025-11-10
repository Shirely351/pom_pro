start=$(date +"%s")
echo ""
echo ">>> Compiling the object(gemm/bicg) files and Generating the optimized HLS C code..."
echo ""
cd build
N_values=(64)
targets=("bicg")
for target in "${targets[@]}"
do
    for N in "${N_values[@]}"
    do
        cmake --build . --target "$target"
        start_time=$(date +%s.%N)
        ./bin/"$target"
        mlir_file="../samples/${target%.*}/test_${target}_${N}.mlir"
        cpp_file="../samples/${target%.*}/test_${target}_${N}.cpp"
        ../scalehls/build/bin/scalehls-opt $mlir_file \
            --scalehls-func-preprocess="top-func=test_${target%.*}" \
            --cse -canonicalize \
            --scalehls-qor-estimation="target-spec=../samples/config.json" \
            | ../scalehls/build/bin/scalehls-translate -emit-hlscpp > $cpp_file

        end_time=$(date +%s.%N)
        execution_time=$(echo "$end_time - $start_time" | bc)
        echo "time[$target,$N] $execution_time"
        echo "The HLS C code of $target: test_${target%.*}_${N}.cpp is generated!"
        echo ""
    done
done