setMode -bscan
setCable -p auto
identify
assignfile -p 2 -file bitstreams/h264_demo/riffa_top_v6_pcie_v2_5.bit
program -p 2
quit
