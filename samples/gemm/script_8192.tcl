open_project -reset "test_gemm_8192"
set_top test_gemm_8192
add_files test_gemm_8192.cpp
open_solution "test_gemm_8192"
set_part {xc7a100t-csg324-1}
create_clock -period 10 -name default
csynth_design
close_project
exit
