#!/bin/sh

####################################
## toplevel
####################################
toplevel="fpu"
export toplevel
####################################
## clean up directory
####################################
echo ""
echo -e "\e[1;31;40mCleaning up directory...\e[0m"
echo ""
rm -rf fpga_syn
rm -rf fpga_sim
rm -rf log
rm -rf ports
rm command.log
rm default.svf
rm stdout.log


mkdir log
mkdir ports
mkdir fpga_sim
mkdir fpga_syn


###################################
## compile source for fpga
###################################
echo -e "\e[1;31;40mSynthesizing source code (FPGA target)...\e[0m"
synplify_premier_dp -batch -tcl fpga_syn.tcl >> log/fpga_syn.log
echo "DONE! logfile: "$PWD"/fpga_syn.log"

echo -e "\e[1;35;40mWARNINGS: \e[0m"
grep "@W:"  fpga_syn/rev_1/proj_1.srr
echo -e "\e[1;35;40mERRORS: \e[0m"
grep "@E:"  fpga_syn/rev_1/proj_1.srr
echo ""
echo -e "\e[1;35;40mINPUTS: \e[0m"
cat ports/inputs.txt
echo -e "\e[1;35;40mOUTPUTS: \e[0m"
cat ports/outputs.txt

fpga_netlist="../fpga_syn/rev_1/proj_1.vm"
#asic_netlist="../"$toplevel"_syn.v"

echo "Please enter clock name: "
read clk
echo "Please enter reset name: "
read reset


#clk="clk"
#reset="sclr"


####################################
##  modify netlist for injection
####################################
echo ""
echo -e "\e[1;31;40mModifying Netlist...\e[0m"
cd fpga_sim 
../../../../software/host/davester/davester "$fpga_netlist" "$toplevel" "$clk" "$reset" FD p_O_FD FDE p_O_FDE FDRE p_O_FDRE FDC p_O_FDC FDP p_O_FDP FDCE p_O_FDCE >> ../log/davester.log


cp -r ../../../base_system/xpsLibraryPath/ .
mv output.v xpsLibraryPath/libFaultify/pcores/faultify_axi_wrapper_v1_00_a/hdl/verilog/
mv goc_wrapper.v xpsLibraryPath/libFaultify/pcores/faultify_axi_wrapper_v1_00_a/hdl/verilog/
mv cut_wrapper.v xpsLibraryPath/libFaultify/pcores/faultify_axi_wrapper_v1_00_a/hdl/verilog/
cp ../fpga_syn/rev_1/proj_1.vm xpsLibraryPath/libFaultify/pcores/faultify_axi_wrapper_v1_00_a/hdl/verilog/goc.v

echo -e "\e[1;31;40mManual modification of generics required!!...\e[0m"
echo -e "\e[1;31;40mxpsLibraryPath/libFaultify/pcores/faultify_axi_wrapper_v1_00_a/hdl/vhdl/user_logic.vhd...\e[0m"

cd ..
echo "DONE! logfile: "$PWD"/log/davester.log"

grep "NumIn:"  log/davester.log
grep "NumOut:"  log/davester.log
grep "NumInj:"  log/davester.log











