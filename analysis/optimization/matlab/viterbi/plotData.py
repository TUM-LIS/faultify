import scipy.io


p1_1_0 = scipy.io.loadmat('manualOpt_fine_part1_snr0.mat')
p2_1_0 = scipy.io.loadmat('manualOpt_fine_snr0.mat')
p3_1_0 = scipy.io.loadmat('manualOpt_fine_part3_snr0.mat')

p1_2_0 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr0.mat')
p2_2_0 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr0.mat')
p3_2_0 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr0.mat')
p4_2_0 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr0.mat')

db0 = sum(p1_1_0['tt'][0]) +sum(p2_1_0['tt'][0])+ sum(p3_1_0['tt'][0]) + sum(p1_2_0['tt'][0])+ sum(p2_2_0['tt'][0])+sum(p3_2_0['tt'][0])+sum(p4_2_0['tt'][0])

p1_1_2 = scipy.io.loadmat('manualOpt_fine_part1_snr2.mat')
p2_1_2 = scipy.io.loadmat('manualOpt_fine_snr2.mat')
p3_1_2 = scipy.io.loadmat('manualOpt_fine_part3_snr2.mat')

p1_2_2 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr2.mat')
p2_2_2 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr2.mat')
p3_2_2 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr2.mat')
p4_2_2 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr2.mat')

db2 = sum(p1_1_2['tt'][0]) +sum(p2_1_2['tt'][0])+ sum(p3_1_2['tt'][0]) + sum(p1_2_2['tt'][0])+ sum(p2_2_2['tt'][0])+sum(p3_2_2['tt'][0])+sum(p4_2_2['tt'][0])

p1_1_4 = scipy.io.loadmat('manualOpt_fine_part1_snr4.mat')
p2_1_4 = scipy.io.loadmat('manualOpt_fine_snr4.mat')
p3_1_4 = scipy.io.loadmat('manualOpt_fine_part3_snr4.mat')

p1_2_4 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr4.mat')
p2_2_4 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr4.mat')
p3_2_4 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr4.mat')
p4_2_4 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr4.mat')

db4 = sum(p1_1_4['tt'][0]) +sum(p2_1_4['tt'][0])+ sum(p3_1_4['tt'][0]) + sum(p1_2_4['tt'][0])+ sum(p2_2_4['tt'][0])+sum(p3_2_4['tt'][0])+sum(p4_2_4['tt'][0])


p1_1_6 = scipy.io.loadmat('manualOpt_fine_part1_snr6.mat')
p2_1_6 = scipy.io.loadmat('manualOpt_fine_snr6.mat')
p3_1_6 = scipy.io.loadmat('manualOpt_fine_part3_snr6.mat')

p1_2_6 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr6.mat')
p2_2_6 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr6.mat')
p3_2_6 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr6.mat')
p4_2_6 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr6.mat')

db6 = sum(p1_1_6['tt'][0]) +sum(p2_1_6['tt'][0])+ sum(p3_1_6['tt'][0]) + sum(p1_2_6['tt'][0])+ sum(p2_2_6['tt'][0]) +sum(p3_2_6['tt'][0])+ sum(p4_2_6['tt'][0])

p1_1_8 = scipy.io.loadmat('manualOpt_fine_part1_snr8.mat')
p2_1_8 = scipy.io.loadmat('manualOpt_fine_snr8.mat')
p3_1_8 = scipy.io.loadmat('manualOpt_fine_part3_snr8.mat')

p1_2_8 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr8.mat')
p2_2_8 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr8.mat')
p3_2_8 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr8.mat')
p4_2_8 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr8.mat')

db8 = sum(p1_1_8['tt'][0]) +sum(p2_1_8['tt'][0])+ sum(p3_1_8['tt'][0]) + sum(p1_2_8['tt'][0])+ sum(p2_2_8['tt'][0]) +sum(p3_2_8['tt'][0])+ sum(p4_2_8['tt'][0])

p1_1_10 = scipy.io.loadmat('manualOpt_fine_part1_snr10.mat')
p2_1_10 = scipy.io.loadmat('manualOpt_fine_snr10.mat')
p3_1_10 = scipy.io.loadmat('manualOpt_fine_part3_snr10.mat')

p1_2_10 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr10.mat')
p2_2_10 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr10.mat')
p3_2_10 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr10.mat')
p4_2_10 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr10.mat')

db10 = sum(p1_1_10['tt'][0]) +sum(p2_1_10['tt'][0])+ sum(p3_1_10['tt'][0]) + sum(p1_2_10['tt'][0])+ sum(p2_2_10['tt'][0]) +sum(p3_2_10['tt'][0])+ sum(p4_2_10['tt'][0])

p1_1_12 = scipy.io.loadmat('manualOpt_fine_part1_snr12.mat')
p2_1_12 = scipy.io.loadmat('manualOpt_fine_snr12.mat')
p3_1_12 = scipy.io.loadmat('manualOpt_fine_part3_snr12.mat')

p1_2_12 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr12.mat')
p2_2_12 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr12.mat')
p3_2_12 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr12.mat')
p4_2_12 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr12.mat')

db12 = sum(p1_1_12['tt'][0]) +sum(p2_1_12['tt'][0])+ sum(p3_1_12['tt'][0]) + sum(p1_2_12['tt'][0])+ sum(p2_2_12['tt'][0]) +sum(p3_2_12['tt'][0])+ sum(p4_2_12['tt'][0])

p1_1_14 = scipy.io.loadmat('manualOpt_fine_part1_snr14.mat')
p2_1_14 = scipy.io.loadmat('manualOpt_fine_snr14.mat')
p3_1_14 = scipy.io.loadmat('manualOpt_fine_part3_snr14.mat')

p1_2_14 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr14.mat')
p2_2_14 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr14.mat')
p3_2_14 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr14.mat')
p4_2_14 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr14.mat')

db14 = sum(p1_1_14['tt'][0]) +sum(p2_1_14['tt'][0])+ sum(p3_1_14['tt'][0]) + sum(p1_2_14['tt'][0])+ sum(p2_2_14['tt'][0]) +sum(p3_2_14['tt'][0])+ sum(p4_2_14['tt'][0])


p1_1_16 = scipy.io.loadmat('manualOpt_fine_part1_snr16.mat')
p2_1_16 = scipy.io.loadmat('manualOpt_fine_snr16.mat')
p3_1_16 = scipy.io.loadmat('manualOpt_fine_part3_snr16.mat')

p1_2_16 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr16.mat')
p2_2_16 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr16.mat')
p3_2_16 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr16.mat')
p4_2_16 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr16.mat')

db16 = sum(p1_1_16['tt'][0]) +sum(p2_1_16['tt'][0])+ sum(p3_1_16['tt'][0]) + sum(p1_2_16['tt'][0])+ sum(p2_2_16['tt'][0]) +sum(p3_2_16['tt'][0])+ sum(p4_2_16['tt'][0])


p1_1_18 = scipy.io.loadmat('manualOpt_fine_part1_snr18.mat')
p2_1_18 = scipy.io.loadmat('manualOpt_fine_snr18.mat')
p3_1_18 = scipy.io.loadmat('manualOpt_fine_part3_snr18.mat')

p1_2_18 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr18.mat')
p2_2_18 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr18.mat')
p3_2_18 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr18.mat')
p4_2_18 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr18.mat')

db18 = sum(p1_1_18['tt'][0]) +sum(p2_1_18['tt'][0])+ sum(p3_1_18['tt'][0]) + sum(p1_2_18['tt'][0])+ sum(p2_2_18['tt'][0]) +sum(p3_2_18['tt'][0])+ sum(p4_2_18['tt'][0])

p1_1_20 = scipy.io.loadmat('manualOpt_fine_part1_snr20.mat')
p2_1_20 = scipy.io.loadmat('manualOpt_fine_snr20.mat')
p3_1_20 = scipy.io.loadmat('manualOpt_fine_part3_snr20.mat')

p1_2_20 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr20.mat')
p2_2_20 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr20.mat')
p3_2_20 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr20.mat')
p4_2_20 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr20.mat')

db20 = sum(p1_1_20['tt'][0]) +sum(p2_1_20['tt'][0])+ sum(p3_1_20['tt'][0]) + sum(p1_2_20['tt'][0])+ sum(p2_2_20['tt'][0]) +sum(p3_2_20['tt'][0])+ sum(p4_2_20['tt'][0])

p1_1_22 = scipy.io.loadmat('manualOpt_fine_part1_snr22.mat')
p2_1_22 = scipy.io.loadmat('manualOpt_fine_snr22.mat')
p3_1_22 = scipy.io.loadmat('manualOpt_fine_part3_snr22.mat')

p1_2_22 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr22.mat')
p2_2_22 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr22.mat')
p3_2_22 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr22.mat')
p4_2_22 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr22.mat')

db22 = sum(p1_1_22['tt'][0]) +sum(p2_1_22['tt'][0])+ sum(p3_1_22['tt'][0]) + sum(p1_2_22['tt'][0])+ sum(p2_2_22['tt'][0]) +sum(p3_2_22['tt'][0])+ sum(p4_2_22['tt'][0])

p1_1_24 = scipy.io.loadmat('manualOpt_fine_part1_snr24.mat')
p2_1_24 = scipy.io.loadmat('manualOpt_fine_snr24.mat')
p3_1_24 = scipy.io.loadmat('manualOpt_fine_part3_snr24.mat')

p1_2_24 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr24.mat')
p2_2_24 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr24.mat')
p3_2_24 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr24.mat')
p4_2_24 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr24.mat')

db24 = sum(p1_1_24['tt'][0]) +sum(p2_1_24['tt'][0])+ sum(p3_1_24['tt'][0]) + sum(p1_2_24['tt'][0])+ sum(p2_2_24['tt'][0]) +sum(p3_2_24['tt'][0])+ sum(p4_2_24['tt'][0])

p1_1_26 = scipy.io.loadmat('manualOpt_fine_part1_snr26.mat')
p2_1_26 = scipy.io.loadmat('manualOpt_fine_snr26.mat')
p3_1_26 = scipy.io.loadmat('manualOpt_fine_part3_snr26.mat')

p1_2_26 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr26.mat')
p2_2_26 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr26.mat')
p3_2_26 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr26.mat')
p4_2_26 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr26.mat')

db26 = sum(p1_1_26['tt'][0]) +sum(p2_1_26['tt'][0])+ sum(p3_1_26['tt'][0]) + sum(p1_2_26['tt'][0])+ sum(p2_2_26['tt'][0]) +sum(p3_2_26['tt'][0])+ sum(p4_2_26['tt'][0])

p1_1_28 = scipy.io.loadmat('manualOpt_fine_part1_snr28.mat')
p2_1_28 = scipy.io.loadmat('manualOpt_fine_snr28.mat')
p3_1_28 = scipy.io.loadmat('manualOpt_fine_part3_snr28.mat')

p1_2_28 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr28.mat')
p2_2_28 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr28.mat')
p3_2_28 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr28.mat')
p4_2_28 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr28.mat')

db28 = sum(p1_1_28['tt'][0]) +sum(p2_1_28['tt'][0])+ sum(p3_1_28['tt'][0]) + sum(p1_2_28['tt'][0])+ sum(p2_2_28['tt'][0]) +sum(p3_2_28['tt'][0])+ sum(p4_2_28['tt'][0])

p1_1_30 = scipy.io.loadmat('manualOpt_fine_part1_snr30.mat')
p2_1_30 = scipy.io.loadmat('manualOpt_fine_snr30.mat')
p3_1_30 = scipy.io.loadmat('manualOpt_fine_part3_snr30.mat')

p1_2_30 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr30.mat')
p2_2_30 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr30.mat')
p3_2_30 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr30.mat')
p4_2_30 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr30.mat')

db30 = sum(p1_1_30['tt'][0]) +sum(p2_1_30['tt'][0])+ sum(p3_1_30['tt'][0]) + sum(p1_2_30['tt'][0])+ sum(p2_2_30['tt'][0]) +sum(p3_2_30['tt'][0])+ sum(p4_2_30['tt'][0])

p1_1_32 = scipy.io.loadmat('manualOpt_fine_part1_snr32.mat')
p2_1_32 = scipy.io.loadmat('manualOpt_fine_snr32.mat')
p3_1_32 = scipy.io.loadmat('manualOpt_fine_part3_snr32.mat')

p1_2_32 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr32.mat')
p2_2_32 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr32.mat')
p3_2_32 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr32.mat')
p4_2_32 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr32.mat')

db32 = sum(p1_1_32['tt'][0]) +sum(p2_1_32['tt'][0])+ sum(p3_1_32['tt'][0]) + sum(p1_2_32['tt'][0])+ sum(p2_2_32['tt'][0]) +sum(p3_2_32['tt'][0])+ sum(p4_2_32['tt'][0])

p1_1_34 = scipy.io.loadmat('manualOpt_fine_part1_snr34.mat')
p2_1_34 = scipy.io.loadmat('manualOpt_fine_snr34.mat')
p3_1_34 = scipy.io.loadmat('manualOpt_fine_part3_snr34.mat')

p1_2_34 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr34.mat')
p2_2_34 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr34.mat')
p3_2_34 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr34.mat')
p4_2_34 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr34.mat')

db34 = sum(p1_1_34['tt'][0]) +sum(p2_1_34['tt'][0])+ sum(p3_1_34['tt'][0]) + sum(p1_2_34['tt'][0])+ sum(p2_2_34['tt'][0]) +sum(p3_2_34['tt'][0])+ sum(p4_2_34['tt'][0])

p1_1_36 = scipy.io.loadmat('manualOpt_fine_part1_snr36.mat')
p2_1_36 = scipy.io.loadmat('manualOpt_fine_snr36.mat')
p3_1_36 = scipy.io.loadmat('manualOpt_fine_part3_snr36.mat')

p1_2_36 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr36.mat')
p2_2_36 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr36.mat')
p3_2_36 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr36.mat')
p4_2_36 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr36.mat')

db36 = sum(p1_1_36['tt'][0]) +sum(p2_1_36['tt'][0])+ sum(p3_1_36['tt'][0]) + sum(p1_2_36['tt'][0])+ sum(p2_2_36['tt'][0]) +sum(p3_2_36['tt'][0])+ sum(p4_2_36['tt'][0])

p1_1_38 = scipy.io.loadmat('manualOpt_fine_part1_snr38.mat')
p2_1_38 = scipy.io.loadmat('manualOpt_fine_snr38.mat')
p3_1_38 = scipy.io.loadmat('manualOpt_fine_part3_snr38.mat')

p1_2_38 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr38.mat')
p2_2_38 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr38.mat')
p3_2_38 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr38.mat')
p4_2_38 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr38.mat')

db38 = sum(p1_1_38['tt'][0]) +sum(p2_1_38['tt'][0])+ sum(p3_1_38['tt'][0]) + sum(p1_2_38['tt'][0])+ sum(p2_2_38['tt'][0]) +sum(p3_2_38['tt'][0])+ sum(p4_2_38['tt'][0])

p1_1_40 = scipy.io.loadmat('manualOpt_fine_part1_snr40.mat')
p2_1_40 = scipy.io.loadmat('manualOpt_fine_snr40.mat')
p3_1_40 = scipy.io.loadmat('manualOpt_fine_part3_snr40.mat')

p1_2_40 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr40.mat')
p2_2_40 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr40.mat')
p3_2_40 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr40.mat')
p4_2_40 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr40.mat')

db40 = sum(p1_1_40['tt'][0]) +sum(p2_1_40['tt'][0])+ sum(p3_1_40['tt'][0]) + sum(p1_2_40['tt'][0])+ sum(p2_2_40['tt'][0]) +sum(p3_2_40['tt'][0])+ sum(p4_2_40['tt'][0])

p1_1_42 = scipy.io.loadmat('manualOpt_fine_part1_snr42.mat')
p2_1_42 = scipy.io.loadmat('manualOpt_fine_snr42.mat')
p3_1_42 = scipy.io.loadmat('manualOpt_fine_part3_snr42.mat')

p1_2_42 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr42.mat')
p2_2_42 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr42.mat')
p3_2_42 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr42.mat')
p4_2_42 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr42.mat')

db42 = sum(p1_1_42['tt'][0]) +sum(p2_1_42['tt'][0])+ sum(p3_1_42['tt'][0]) + sum(p1_2_42['tt'][0])+ sum(p2_2_42['tt'][0]) +sum(p3_2_42['tt'][0])+ sum(p4_2_42['tt'][0])

p1_1_44 = scipy.io.loadmat('manualOpt_fine_part1_snr44.mat')
p2_1_44 = scipy.io.loadmat('manualOpt_fine_snr44.mat')
p3_1_44 = scipy.io.loadmat('manualOpt_fine_part3_snr44.mat')

p1_2_44 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr44.mat')
p2_2_44 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr44.mat')
p3_2_44 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr44.mat')
p4_2_44 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr44.mat')

db44 = sum(p1_1_44['tt'][0]) +sum(p2_1_44['tt'][0])+ sum(p3_1_44['tt'][0]) + sum(p1_2_44['tt'][0])+ sum(p2_2_44['tt'][0]) +sum(p3_2_44['tt'][0])+ sum(p4_2_44['tt'][0])

p1_1_46 = scipy.io.loadmat('manualOpt_fine_part1_snr46.mat')
p2_1_46 = scipy.io.loadmat('manualOpt_fine_snr46.mat')
p3_1_46 = scipy.io.loadmat('manualOpt_fine_part3_snr46.mat')

p1_2_46 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr46.mat')
p2_2_46 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr46.mat')
p3_2_46 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr46.mat')
p4_2_46 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr46.mat')

db46 = sum(p1_1_46['tt'][0]) +sum(p2_1_46['tt'][0])+ sum(p3_1_46['tt'][0]) + sum(p1_2_46['tt'][0])+ sum(p2_2_46['tt'][0]) +sum(p3_2_46['tt'][0])+ sum(p4_2_46['tt'][0])


p1_1_48 = scipy.io.loadmat('manualOpt_fine_part1_snr48.mat')
p2_1_48 = scipy.io.loadmat('manualOpt_fine_snr48.mat')
p3_1_48 = scipy.io.loadmat('manualOpt_fine_part3_snr48.mat')

p1_2_48 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr48.mat')
p2_2_48 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr48.mat')
p3_2_48 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr48.mat')
p4_2_48 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr48.mat')

db48 = sum(p1_1_48['tt'][0]) +sum(p2_1_48['tt'][0])+ sum(p3_1_48['tt'][0]) + sum(p1_2_48['tt'][0])+ sum(p2_2_48['tt'][0]) +sum(p3_2_48['tt'][0])+ sum(p4_2_48['tt'][0])

p1_1_50 = scipy.io.loadmat('manualOpt_fine_part1_snr50.mat')
p2_1_50 = scipy.io.loadmat('manualOpt_fine_snr50.mat')
p3_1_50 = scipy.io.loadmat('manualOpt_fine_part3_snr50.mat')

p1_2_50 = scipy.io.loadmat('manualOpt_fine_part1_FDRE_snr50.mat')
p2_2_50 = scipy.io.loadmat('manualOpt_fine_part2_FDRE_snr50.mat')
p3_2_50 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr50.mat')
p4_2_50 = scipy.io.loadmat('manualOpt_fine_part3_FDRE_snr50.mat')

db50 = sum(p1_1_50['tt'][0]) +sum(p2_1_50['tt'][0])+ sum(p3_1_50['tt'][0]) + sum(p1_2_50['tt'][0])+ sum(p2_2_50['tt'][0])+sum(p3_2_50['tt'][0])+sum(p4_2_50['tt'][0])


approx = [db0, db2, db4, db6, db8, db10, db12, db14, db16, db18, db20, db22, db24, db26, db28, db30, db32, db34, db36, db38, db40, db42, db44, db46, db48, db50]
#print approx

import matplotlib.pyplot as plt
import numpy as np

t = np.arange(0, 52, 2)
#print t

plt.figure()
plt.plot(t,approx,'r')
plt.xlabel('Signal-to-Noise Ratio [dB]')
plt.ylabel(r'Tolerated sum of $p_e$')
plt.show()




