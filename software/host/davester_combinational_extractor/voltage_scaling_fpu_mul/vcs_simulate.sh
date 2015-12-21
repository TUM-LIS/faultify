vlogan  output.v ../saed90nm.v cut_wrapper.v saed90nm_cGate.v -timescale=1ps/1ps
vhdlan txt_util.vhd
vhdlan cut_wrapper_static_all.vhd 
vhdlan tb_fpu_syn.vhd
vcs tb_fpu -debug
power -gate_level rtl_on 
power circuit_under_test_1
power -enable
run 200000000ps
power -disable
power -report vcs.saif 1.0e-12 circuit_under_test_1
quit


