import scipy.io
x_30 = scipy.io.loadmat('fine_30.mat')
x_40 = scipy.io.loadmat('fine_40.mat')
x_50 = scipy.io.loadmat('fine_50.mat')

div_30 = x_30['pdiv']
mul_30 = x_30['pmul']
sqrt_30 = x_30['psqrt']
div_40 = x_40['pdiv']
mul_40 = x_40['pmul']
sqrt_40 = x_40['psqrt']
div_50 = x_50['pdiv']
mul_50 = x_50['pmul']
sqrt_50 = x_50['psqrt']

import matplotlib.pyplot as plt
import numpy as np
t = np.arange(0, 32, 1)

#print t.shape
#print Q_30[0].shape

plt.figure()
plt.subplot(311)
plt.plot(t,div_30[0],'ro-',label='30 dB')
plt.plot(t,div_40[0],'go-',label='40 dB')
plt.plot(t,div_50[0],'bo-',label='50 dB')
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'fdiv', fontsize=20,style='italic', fontweight='bold')
plt.annotate('sign bit',xy=(30,0.1),xytext=(25,.3),arrowprops=dict(arrowstyle="->"))
plt.legend(bbox_to_anchor=(0., 1.02, 1., .102), loc=3,
           ncol=3, mode="expand", borderaxespad=0.)

plt.subplot(312)
plt.plot(t,mul_30[0],'ro-',t,mul_40[0],'go-',t,mul_50[0],'bo-')
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'fmul', fontsize=20,style='italic', fontweight='bold')

plt.subplot(313)
plt.plot(t,sqrt_30[0],'ro-',t,sqrt_40[0],'go-',t,sqrt_50[0],'bo-')
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'fsqrt', fontsize=20,style='italic', fontweight='bold')

plt.show()
