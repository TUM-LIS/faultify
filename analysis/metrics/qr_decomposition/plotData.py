import scipy.io
x_30 = scipy.io.loadmat('res_fine_30.mat')
x_40 = scipy.io.loadmat('res_fine_40.mat')
x_50 = scipy.io.loadmat('res_fine_50.mat')


Q_30 = x_30['p_Q']
R_30 = x_30['p_R']

Q_40 = x_40['p_Q']
R_40 = x_40['p_R']

Q_50 = x_50['p_Q']
R_50 = x_50['p_R']


import matplotlib.pyplot as plt
import numpy as np
t = np.arange(0, 12, 1)

#print t.shape
#print Q_30[0].shape

plt.figure()
plt.subplot(211)
lQ30, = plt.plot(t,Q_30[0],'r1-',lw=2,ms=10,mew=2,label='30 dB')
lQ40, = plt.plot(t,Q_40[0],'g2-',lw=2,ms=10,mew=2,label='40 dB')
lQ50, = plt.plot(t,Q_50[0],'b3-',lw=2,ms=10,mew=2,label='50 dB')
plt.legend()

plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'Q', fontsize=20,style='italic', fontweight='bold')

plt.subplot(212)
lR30, = plt.plot(t,R_30[0],'r1-',lw=2,ms=10,mew=2,label='30 dB')
lR40, = plt.plot(t,R_40[0],'g2-',lw=2,ms=10,mew=2,label='40 dB')
lR50, = plt.plot(t,R_50[0],'b3-',lw=2,ms=10,mew=2,label='50 dB')
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'R', fontsize=20,style='italic', fontweight='bold')
plt.legend()

plt.show()
