webtalk_init -webtalk_dir /home/jacoboffersen/Repos/inverter/inverter.sdk/webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "2019-04-23 09:47:41" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2018.2" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2018.2" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "210779069_174157381_210698700_040" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "81mtrkggo6hlesbe8iemkda4hl" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2018.2_5" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "5" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 18.04.2 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2490.850 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.680 GB" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1556005649000" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key isZynq -value "true" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key isZynqMP -value "false" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key Processors -value "2" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key VivadoVersion -value "2018.2" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key Arch -value "zynq" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key Device -value "7z010" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key IsHandoff -value "true" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key os -value "NA" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key apptemplate -value "NA" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key RecordType -value "HWCreation" -context "sdk\\\\hardware/1556005649000"
webtalk_add_data -client sdk -key uid -value "NA" -context "sdk\\\\bsp/1556005661620"
webtalk_add_data -client sdk -key RecordType -value "ToolUsage" -context "sdk\\\\bsp/1556005661620"
webtalk_add_data -client sdk -key BootgenCount -value "0" -context "sdk\\\\bsp/1556005661620"
webtalk_add_data -client sdk -key DebugCount -value "0" -context "sdk\\\\bsp/1556005661620"
webtalk_add_data -client sdk -key PerfCount -value "0" -context "sdk\\\\bsp/1556005661620"
webtalk_add_data -client sdk -key FlashCount -value "0" -context "sdk\\\\bsp/1556005661620"
webtalk_add_data -client sdk -key CrossTriggCount -value "0" -context "sdk\\\\bsp/1556005661620"
webtalk_add_data -client sdk -key QemuDebugCount -value "0" -context "sdk\\\\bsp/1556005661620"
webtalk_transmit -clientid 1019669082 -regid "210779069_174157381_210698700_040" -xml /home/jacoboffersen/Repos/inverter/inverter.sdk/webtalk/usage_statistics_ext_sdk.xml -html /home/jacoboffersen/Repos/inverter/inverter.sdk/webtalk/usage_statistics_ext_sdk.html -wdm /home/jacoboffersen/Repos/inverter/inverter.sdk/webtalk/sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate
