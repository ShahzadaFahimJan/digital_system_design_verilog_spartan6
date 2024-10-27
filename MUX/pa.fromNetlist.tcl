
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name MUX -dir "H:/faheeemjan/DSD_spring2024/lab6/MUX/planAhead_run_1" -part xc6slx9csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "H:/faheeemjan/DSD_spring2024/lab6/MUX/MUX.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {H:/faheeemjan/DSD_spring2024/lab6/MUX} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "MUX.ucf" [current_fileset -constrset]
add_files [list {MUX.ucf}] -fileset [get_property constrset [current_run]]
link_design
