import scipy.io
x_30_div = scipy.io.loadmat('fpu100_div/tt_30.mat')
x_40_div = scipy.io.loadmat('fpu100_div/tt_40.mat')
x_50_div = scipy.io.loadmat('fpu100_div/tt_50.mat')
x_30_mul = scipy.io.loadmat('fpu100_mul/tt_30.mat')
x_40_mul = scipy.io.loadmat('fpu100_mul/tt_40.mat')
x_50_mul = scipy.io.loadmat('fpu100_mul/tt_50.mat')
x_30_sqrt = scipy.io.loadmat('fpu100_sqrt/tt_30.mat')
x_40_sqrt = scipy.io.loadmat('fpu100_sqrt/tt_40.mat')
x_50_sqrt = scipy.io.loadmat('fpu100_sqrt/tt_50.mat')


tt_30_div = x_30_div['tt']
tt_40_div = x_40_div['tt']
tt_50_div = x_50_div['tt']
tt_30_mul = x_30_mul['tt']
tt_40_mul = x_40_mul['tt']
tt_50_mul = x_50_mul['tt']
tt_30_sqrt = x_30_sqrt['tt']
tt_40_sqrt = x_40_sqrt['tt']
tt_50_sqrt = x_50_sqrt['tt']

print sum(tt_30_div[0])
print sum(tt_40_div[0])
print sum(tt_50_div[0])
print sum(tt_30_mul[0])
print sum(tt_40_mul[0])
print sum(tt_50_mul[0])
print sum(tt_30_sqrt[0])
print sum(tt_40_sqrt[0])
print sum(tt_50_sqrt[0])

import matplotlib.pyplot as plt
import numpy as np
t_div = np.arange(0, 268, 1)
t_mul = np.arange(0, 142, 1)
t_sqrt = np.arange(0, 302, 1)

#print t_mul.shape
#print tt_30_mul[0].shape

plt.figure()
plt.subplot(311)
plt.plot(t_div,tt_30_div[0],'r--',label='30 dB')
plt.plot(t_div,tt_40_div[0],'g-.',label='40 dB')
plt.plot(t_div,tt_50_div[0],'b-',label='50 dB')
#plt.legend()
plt.ylim(0.0,0.6)
plt.xlabel('Flip-Flop index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'div', fontsize=20,style='italic', fontweight='bold')
plt.legend(bbox_to_anchor=(0., 1.02, 1., .102), loc=3,
           ncol=3, mode="expand", borderaxespad=0.)

plt.subplot(312)
plt.plot(t_mul,tt_30_mul[0],'r--',label='30 dB')
plt.plot(t_mul,tt_40_mul[0],'g-.',label='40 dB')
plt.plot(t_mul,tt_50_mul[0],'b-',label='50 dB')
#plt.legend()
plt.ylim(0.0,0.6)
plt.xlabel('Flip-Flop index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'mul', fontsize=20,style='italic', fontweight='bold')

plt.subplot(313)
plt.plot(t_sqrt,tt_30_sqrt[0],'r--',label='30 dB')
plt.plot(t_sqrt,tt_40_sqrt[0],'g-.',label='40 dB')
plt.plot(t_sqrt,tt_50_sqrt[0],'b-',label='50 dB')
#plt.legend()
plt.ylim(0.0,0.6)
plt.xlabel('Flip-Flop index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'sqrt', fontsize=20,style='italic', fontweight='bold')



plt.show()
