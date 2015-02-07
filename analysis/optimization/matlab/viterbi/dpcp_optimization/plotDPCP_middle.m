clear all
db4 = importdata('dpcp_4.txt');
db6 = importdata('dpcp_6.txt');
db8 = importdata('dpcp_8.txt');
db10 = importdata('dpcp_10.txt');
db12 = importdata('dpcp_12.txt');
db14 = importdata('dpcp_14.txt');
db16 = importdata('dpcp_16.txt');
db18 = importdata('dpcp_18.txt');
db20 = importdata('dpcp_20.txt');
db22 = importdata('dpcp_22.txt');
db24 = importdata('dpcp_24.txt');
db26 = importdata('dpcp_26.txt');
db28 = importdata('dpcp_28.txt');
db30 = importdata('dpcp_30.txt');
db32 = importdata('dpcp_32.txt');
db34 = importdata('dpcp_34.txt');
db36 = importdata('dpcp_36.txt');
db38 = importdata('dpcp_38.txt');
db40 = importdata('dpcp_40.txt');
db42 = importdata('dpcp_42.txt');
db44 = importdata('dpcp_44.txt');
db46 = importdata('dpcp_46.txt');
db48 = importdata('dpcp_48.txt');
db50 = importdata('dpcp_50.txt');

notReqRegs = [sum(db4) sum(db8) sum(db10) sum(db12) sum(db14) sum(db16) ...
        sum(db18) sum(db20) sum(db22) sum(db24) sum(db26) sum(db28) sum(db30) ...
        sum(db32) sum(db34) sum(db36) sum(db38) sum(db40) sum(db42) sum(db44) ...
        sum(db46) sum(db48) sum(db50)];
xx = [4 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50];
    plot(xx,notReqRegs)
    
    
    
