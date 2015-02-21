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
import pylab
from pylab import arange,pi,sin,cos,sqrt


fig_width_pt = 253.04987 # Get this from LaTeX using \showthe\columnwidth
inches_per_pt = 1.0/72.27               # Convert pt to inches
golden_mean = (sqrt(5)-1.0)/2.0         # Aesthetic ratio
fig_width = fig_width_pt*inches_per_pt  # width in inches
fig_height =fig_width*golden_mean+0.0       # height in inches
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
gs1 = gridspec.GridSpec(2, 2)
gs1.update(left=0.14, right=.95,bottom=.18,top=0.93, hspace=0.6)






t = np.arange(0, 12, 1)

#print t.shape
#print Q_30[0].shape

plt.figure()
ax1 = plt.subplot(gs1[0,:])
lQ30, = plt.plot(t,Q_30[0],'r--',lw=1,ms=10,mew=1,label='30 dB')
lQ40, = plt.plot(t,Q_40[0],'g-.',lw=1,ms=10,mew=1,label='40 dB')
lQ50, = plt.plot(t,Q_50[0],'b-',lw=1,ms=10,mew=1,label='50 dB')
plt.legend()
ax1.set_ylim([0, .6])
ax1.set_xlim([0, 12])
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'Q', fontsize=9,style='italic', fontweight='bold')

ax2 = plt.subplot(gs1[1:,:])
lR30, = plt.plot(t,R_30[0],'r--',lw=1,ms=10,mew=1,label='30 dB')
lR40, = plt.plot(t,R_40[0],'g-.',lw=1,ms=10,mew=1,label='40 dB')
lR50, = plt.plot(t,R_50[0],'b-',lw=1,ms=10,mew=1,label='50 dB')
ax2.set_ylim([0, .6])
ax2.set_xlim([0, 12])
plt.xlabel('Bit index')
plt.ylabel(r'Tolerated $p_e$')
plt.text(2,.3,'R', fontsize=9,style='italic', fontweight='bold')
#plt.legend()
plt.savefig('metrics_qr.pdf')
#plt.show()
