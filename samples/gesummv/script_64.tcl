open_project -reset "test_gesummv_64"
set_top test_gesummv_64
add_files test_gesummv_64.cpp
open_solution "test_gesummv_64"
set_part {xc7a100t-csg324-1}
create_clock -period 10 -name default
csynth_design
close_project
exit
