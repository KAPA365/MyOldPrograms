transcript on
if ![file isdirectory vga_colorbar_iputf_libs] {
	file mkdir vga_colorbar_iputf_libs
}

if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {c:/intelfpga/18.1/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {c:/intelfpga/18.1/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {c:/intelfpga/18.1/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {c:/intelfpga/18.1/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {c:/intelfpga/18.1/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cyclonev
vmap cyclonev ./vhdl_libs/cyclonev
vlog -vlog01compat -work cyclonev {c:/intelfpga/18.1/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vcom -93 -work cyclonev {c:/intelfpga/18.1/quartus/eda/sim_lib/cyclonev_atoms.vhd}
vcom -93 -work cyclonev {c:/intelfpga/18.1/quartus/eda/sim_lib/cyclonev_components.vhd}

vlib verilog_libs/cyclonev_ver
vmap cyclonev_ver ./verilog_libs/cyclonev_ver
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/cyclonev_atoms.v}

vlib verilog_libs/cyclonev_hssi_ver
vmap cyclonev_hssi_ver ./verilog_libs/cyclonev_hssi_ver
vlog -vlog01compat -work cyclonev_hssi_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_hssi_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/cyclonev_hssi_atoms.v}

vlib verilog_libs/cyclonev_pcie_hip_ver
vmap cyclonev_pcie_hip_ver ./verilog_libs/cyclonev_pcie_hip_ver
vlog -vlog01compat -work cyclonev_pcie_hip_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_pcie_hip_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/cyclonev_pcie_hip_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "D:/altera/quar/q2/23/12/music_de1/par/clk_gen_sim/clk_gen.vo"
vlog "D:/altera/quar/q2/23/12/music_de1/par/pll_sim/pll.vo"        

vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/rom {D:/altera/quar/q2/23/12/music_de1/rtl/rom/music_time_rom0_t.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/rom {D:/altera/quar/q2/23/12/music_de1/rtl/rom/music_rom0_t.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/music {D:/altera/quar/q2/23/12/music_de1/rtl/music/music_top3.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/music {D:/altera/quar/q2/23/12/music_de1/rtl/music/music_top2.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/music {D:/altera/quar/q2/23/12/music_de1/rtl/music/music_top1.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/music {D:/altera/quar/q2/23/12/music_de1/rtl/music/music_top0.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/music {D:/altera/quar/q2/23/12/music_de1/rtl/music/music_hz.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/PS2_Controller {D:/altera/quar/q2/23/12/music_de1/rtl/PS2_Controller/PS2_Controller.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/PS2_Controller {D:/altera/quar/q2/23/12/music_de1/rtl/PS2_Controller/Altera_UP_PS2_Data_In.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/PS2_Controller {D:/altera/quar/q2/23/12/music_de1/rtl/PS2_Controller/Altera_UP_PS2_Command_Out.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/WM8731 {D:/altera/quar/q2/23/12/music_de1/rtl/WM8731/I2C_Controller.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/WM8731 {D:/altera/quar/q2/23/12/music_de1/rtl/WM8731/I2C_AV_Config.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/WM8731 {D:/altera/quar/q2/23/12/music_de1/rtl/WM8731/audio_8731_top.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl/WM8731 {D:/altera/quar/q2/23/12/music_de1/rtl/WM8731/adio_codec.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl {D:/altera/quar/q2/23/12/music_de1/rtl/vga_display3.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl {D:/altera/quar/q2/23/12/music_de1/rtl/vga_display2.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl {D:/altera/quar/q2/23/12/music_de1/rtl/vga_display1.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl {D:/altera/quar/q2/23/12/music_de1/rtl/vga_display0.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl {D:/altera/quar/q2/23/12/music_de1/rtl/seg7.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl {D:/altera/quar/q2/23/12/music_de1/rtl/top.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl {D:/altera/quar/q2/23/12/music_de1/rtl/fsm_ctl.v}
vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/rtl {D:/altera/quar/q2/23/12/music_de1/rtl/vga_driver.v}

vlog -vlog01compat -work work +incdir+D:/altera/quar/q2/23/12/music_de1/par/../tb {D:/altera/quar/q2/23/12/music_de1/par/../tb/fsm_ctl_tb.v}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  fsm_ctl_tb

add wave *
view structure
view signals
run -all
