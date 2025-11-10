open_project -reset "test_edgeDetect_4096"
set_top test_edgeDetect_4096
add_files test_edgeDetect_4096.cpp
open_solution "test_edgeDetect_4096"
set_part {xc7a100t-csg324-1}
create_clock -period 10 -name default
csynth_design
close_project
exit
