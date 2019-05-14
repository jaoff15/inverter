connect -url tcp:127.0.0.1:3121
source /home/jacoboffersen/Repos/inverter/inverter.sdk/top_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279772620A" && level==0} -index 1
fpga -file /home/jacoboffersen/Repos/inverter/inverter.sdk/top_hw_platform_0/top.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279772620A"} -index 0
loadhw -hw /home/jacoboffersen/Repos/inverter/inverter.sdk/top_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279772620A"} -index 0
stop
ps7_init
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279772620A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279772620A"} -index 0
dow /home/jacoboffersen/Repos/extra/inverter/project/Debug/project.elf
configparams force-mem-access 0
bpadd -addr &main
