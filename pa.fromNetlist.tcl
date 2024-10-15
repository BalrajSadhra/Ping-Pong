
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name SimpleVideoGame -dir "/home/student1/m7jo/coe758/simplegame/SimpleVideoGame/planAhead_run_2" -part xc3s500efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/student1/m7jo/coe758/simplegame/SimpleVideoGame/vga_driver.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/student1/m7jo/coe758/simplegame/SimpleVideoGame} }
set_property target_constrs_file "gameucf.ucf" [current_fileset -constrset]
add_files [list {gameucf.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
