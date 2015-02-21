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
import pylab
from pylab import arange,pi,sin,cos,sqrt


fig_width_pt = 253.04987 # Get this from LaTeX using \showthe\columnwidth
inches_per_pt = 1.0/72.27               # Convert pt to inches
golden_mean = (sqrt(5)-1.0)/2.0         # Aesthetic ratio
fig_width = fig_width_pt*inches_per_pt  # width in inches
fig_height =fig_width*golden_mean+1.0       # height in inches
fig_size = [fig_width,fig_height]
params = {'backend': 'ps',
          'axes.labelsize': 8,
          'text.fontsize': 8,
          'legend.fontsize': 8,
          'xtick.labelsize': 8,
          'ytick.labelsize': 8,
          'text.usetex': True,
          'figure.figsize': fig_size}

pylab.rcParams.update(params)
import matplotlib.gridspec as gridspec
gs1 = gridspec.GridSpec(3, 3)
gs1.update(left=0.14, right=.96,bottom=.12,top=0.92, hspace=0.55)



t = np.arange(0, 32, 1)

#print t.shape
#print Q_30[0].shape

plt.figure()
ax1= plt.subplot(gs1[0,:])
plt.plot(t,div_30[0],'r--',label='30 dB')
plt.plot(t,div_40[0],'g-.',label='40 dB')
plt.plot(t,div_50[0],'b-',label='50 dB')
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
ax1.set_ylim([0, .6])
ax1.set_xlim([0, 31])

plt.text(2,.3,'fdiv', fontsize=9,style='italic', fontweight='bold')
plt.annotate('sign bit',xy=(30,0.1),xytext=(22,.3),arrowprops=dict(arrowstyle="->"))
plt.legend(bbox_to_anchor=(0., 1.02, 1., .102), loc=3,
           ncol=3, mode="expand", borderaxespad=0.)

ax2 = plt.subplot(gs1[1,:])
plt.plot(t,mul_30[0],'r--',t,mul_40[0],'g-.',t,mul_50[0],'b-')
ax2.set_ylim([0, .6])
ax2.set_xlim([0, 31])
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'fmul', fontsize=9,style='italic', fontweight='bold')

ax3 = plt.subplot(gs1[2,:])
plt.plot(t,sqrt_30[0],'r--',t,sqrt_40[0],'g-.',t,sqrt_50[0],'b-')
ax3.set_ylim([0, .6])
ax3.set_xlim([0, 31])
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'fsqrt', fontsize=9,style='italic', fontweight='bold')
plt.savefig('metrics_sobel.pdf')
#plt.show()
