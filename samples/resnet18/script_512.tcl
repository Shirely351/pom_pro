open_project -reset "test_resnet18_512"
set_top test_resnet18
add_files test_resnet18.cpp
open_solution "test_resnet18_512"
set_part {xc7a100t-csg324-1}
create_clock -period 10 -name default
set_directive_pipeline -off "test_resnet18"
csynth_design
close_project
exit
