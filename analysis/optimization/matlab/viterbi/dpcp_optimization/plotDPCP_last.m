clear all
db0 = importdata('dpcp_part3_0.txt');
db2 = importdata('dpcp_part3_2.txt');
db4 = importdata('dpcp_part3_4.txt');
db6 = importdata('dpcp_part3_6.txt');
db8 = importdata('dpcp_part3_8.txt');
db10 = importdata('dpcp_part3_10.txt');
db12 = importdata('dpcp_part3_12.txt');
db14 = importdata('dpcp_part3_14.txt');
db16 = importdata('dpcp_part3_16.txt');
db18 = importdata('dpcp_part3_18.txt');
db20 = importdata('dpcp_part3_20.txt');
db22 = importdata('dpcp_part3_22.txt');
db24 = importdata('dpcp_part3_24.txt');
db26 = importdata('dpcp_part3_26.txt');
db28 = importdata('dpcp_part3_28.txt');
db30 = importdata('dpcp_part3_30.txt');
db32 = importdata('dpcp_part3_32.txt');
db34 = importdata('dpcp_part3_34.txt');
db36 = importdata('dpcp_part3_36.txt');
db38 = importdata('dpcp_part3_38.txt');
db40 = importdata('dpcp_part3_40.txt');
db42 = importdata('dpcp_part3_42.txt');
db44 = importdata('dpcp_part3_44.txt');
db46 = importdata('dpcp_part3_46.txt');
db48 = importdata('dpcp_part3_48.txt');
db50 = importdata('dpcp_part3_50.txt');






notReqRegs = [sum(db0) sum(db2) sum(db4) sum(db6) sum(db8) sum(db10) sum(db12) sum(db14) sum(db16)...
    sum(db18) sum(db20) sum(db22) sum(db24) sum(db26) sum(db28)...
    sum(db30) sum(db32) sum(db34) sum(db36) sum(db38) sum(db40)...
    sum(db42) sum(db44) sum(db46) sum(db48) sum(db50) ];
xx = 0:2:50;
    plot(xx,notReqRegs)
    