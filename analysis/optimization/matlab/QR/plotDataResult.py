import scipy.io
x_30 = scipy.io.loadmat('test_30.mat')
x_40 = scipy.io.loadmat('test_40.mat')
x_50 = scipy.io.loadmat('test_50.mat')

tt_30 = x_30['r']
tt_40 = x_40['r']
tt_50 = x_50['r']


import matplotlib.pyplot as plt
import numpy as np
t = np.arange(1, 203, 1)

#print t.shape
#print tt_30.shape
#print tt_30
plt.figure()
l30, = plt.plot(t,tt_30,'r-',lw=1,ms=10,mew=1,label='30 dB')
l40, = plt.plot(t,tt_40,'g-',lw=1,ms=10,mew=1,label='40 dB')
l50, = plt.plot(t,tt_50,'b-',lw=1,ms=10,mew=1,label='50 dB')
plt.legend()

plt.xlabel('Output pin index')
plt.ylabel(r'Bit-error probability $p_e$')
plt.text(2,.3,'QR', fontsize=20,style='italic', fontweight='bold')


plt.show()
