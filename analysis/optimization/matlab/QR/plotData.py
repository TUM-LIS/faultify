import scipy.io
x_30 = scipy.io.loadmat('tt_30_5_6.mat')
x_40 = scipy.io.loadmat('tt_40_6_6.mat')
x_50 = scipy.io.loadmat('tt_50_6_7.mat')

tt_30 = x_30['tt']
tt_40 = x_40['tt']
tt_50 = x_50['tt']


import matplotlib.pyplot as plt
import numpy as np
t = np.arange(0, 414, 1)

#print t.shape
#print tt_30[0].shape

plt.figure()
l30, = plt.plot(t,tt_30[0],'r-',lw=1,ms=10,mew=1,label='30 dB')
l40, = plt.plot(t,tt_40[0],'g-',lw=1,ms=10,mew=1,label='40 dB')
l50, = plt.plot(t,tt_50[0],'b-',lw=1,ms=10,mew=1,label='50 dB')
plt.legend()

plt.xlabel('Flip-Flop index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'QR', fontsize=20,style='italic', fontweight='bold')


plt.show()
