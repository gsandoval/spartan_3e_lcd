
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name hitachi_lcd -dir "C:/Users/darchitect/Documents/workspaces/fpga/hitachi_lcd/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Main.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {HitachiLCDController.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Main.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Main $srcset
add_files [list {Main.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
