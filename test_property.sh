#!/usr/bin/env bash
start=$(date +"%s")
echo ""
echo ">>> test property from examples..."
echo ""
cd build

if [ -f "execution_times.txt" ]; then
    rm "execution_times.txt"
fi

# Initialize flags as false
DUMP_ORIGINAL_SCHEDULE=false
DUMP_FINAL_SCHEDULE=false
DUMP_MLIR=false
SAVE_SCHEDULE=false
SAVE_MLIR=false
GENERATE_HLS_CPP=false
# Initialize success and error lists
success_list=()
error_list=()
hls_success_list=()
hls_error_list=()

# Process command line arguments


# Export variables to be used elsewhere in the script

targets=("gemm" "bicg" "gesummv" "2mm" "3mm" "edgeDetect" "gaussian" "blur" "vgg16"  "resnet18" "jacobi" "jacobi2d" "heat" "seidel")
# targets=("syr2k" "syrk" "trmm" "bicg" "gemm" "gesummv")
cmake --build . -j 

for target in "${targets[@]}"
do  
    command="./bin/$target"
    msg=""
    
    # Execute the command with any added flags and check for errors
    if eval "$command"; then
        success_list+=("$target")
        echo "The $msg of $target: test_${target%.*}.mlir is generated!"
        echo ""
    else
        error_list+=("$target")
        echo "The $msg of $target: test_${target%.*}.mlir is not generated!"
        echo ""
    fi
done

end=$(date +"%s")
execution=$(($end - $start))

echo ""
echo ">>> mlir code has been finished!"
echo ">>> Total Execution Time: $execution seconds"
echo ""
echo ">>> Successful targets (${#success_list[@]}):"
for target in "${success_list[@]}"; do
    echo "  - $target"
done
echo ""
echo ""

echo ">>> Failed targets (${#error_list[@]}):"
for target in "${error_list[@]}"; do
    echo "  - $target"
done
echo ""


echo ">>> Please check the error list above for more information."
echo ">>> If you want to generate the mlir code again, please run the script with the following options:"
echo ">>> --dump-original-schedule, --dump-final-schedule, --dump-mlir, --save-schedule, --save-mlir, --save-hls"
echo ""


