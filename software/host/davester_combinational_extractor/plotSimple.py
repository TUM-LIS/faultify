import scipy.io
import matplotlib.pyplot as plt
import numpy as np


import pylab
from pylab import arange,pi,sin,cos,sqrt


fig_width_pt = 253.04987 # Get this from LaTeX using \showthe\columnwidth
inches_per_pt = 1.0/72.27               # Convert pt to inches
golden_mean = (sqrt(5)-1.0)/2.0         # Aesthetic ratio
fig_width = fig_width_pt*inches_per_pt  # width in inches
fig_height =fig_width*golden_mean       # height in inches
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


data = scipy.io.loadmat('simple_result.mat')



x_sim = data['range'][0]
y_sim = data['soe'][0]/10000.0

x_complex = data['pt_complex'][:,0]/1000.0
y_complex = data['pt_complex'][:,1]

x_simple = data['pt_simple'][:,0]/1000.0
y_simple = data['pt_simple'][:,1]


#print(x_complex)
#print(x_sim)


pylab.figure(1)
pylab.clf()

pylab.axes([0.18,0.17,0.95-0.17,0.95-0.22])
#pylab.yscale('log')
pylab.ylim(0,0.5)
pylab.xlim(0.75,1.05)

pylab.plot(x_sim,y_sim,'b-',label='simulated')
pylab.plot(x_complex,y_complex,'r-',label='complex estimation')
pylab.plot(x_simple,y_simple,'g-',label='simplified estimation')
pylab.ylabel('Error Probability at Register Endpoint')
pylab.xlabel('Supply Voltage [V]')

pylab.legend(loc=1)
pylab.savefig('scaling_simple.pdf')
#pylab.show()
