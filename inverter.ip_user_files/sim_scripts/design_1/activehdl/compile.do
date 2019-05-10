vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_3
vlib activehdl/axi_vip_v1_1_3
vlib activehdl/processing_system7_vip_v1_0_5
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/blk_mem_gen_v8_3_6
vlib activehdl/axi_bram_ctrl_v4_0_14
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_12

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 activehdl/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 activehdl/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 activehdl/processing_system7_vip_v1_0_5
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap blk_mem_gen_v8_3_6 activehdl/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_0_14 activehdl/axi_bram_ctrl_v4_0_14
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_14 -93 \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/6db1/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_family.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_axi_xadc.vhd" \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m01s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m01e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/4e7b/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../inverter.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

