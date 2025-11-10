open_project -reset "test_vgg16_512"
set_top test_vgg16
add_files test_vgg16.cpp
open_solution "test_vgg16_512"
set_part {xc7a100t-csg324-1}
create_clock -period 10 -name default
set_directive_pipeline -off "test_vgg16"
csynth_design
close_project
exit
