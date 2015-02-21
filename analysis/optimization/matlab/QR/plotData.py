from matplotlib.transforms import Bbox, TransformedBbox, \
     blended_transform_factory

from mpl_toolkits.axes_grid1.inset_locator import BboxPatch, BboxConnector,\
     BboxConnectorPatch


def connect_bbox(bbox1, bbox2,
                 loc1a, loc2a, loc1b, loc2b,
                 prop_lines, prop_patches=None):
    if prop_patches is None:
        prop_patches = prop_lines.copy()
        prop_patches["alpha"] = prop_patches.get("alpha", 1)*0.2

    c1 = BboxConnector(bbox1, bbox2, loc1=loc1a, loc2=loc2a, **prop_lines)
    c1.set_clip_on(False)
    c2 = BboxConnector(bbox1, bbox2, loc1=loc1b, loc2=loc2b, **prop_lines)
    c2.set_clip_on(False)

    bbox_patch1 = BboxPatch(bbox1, **prop_patches)
    bbox_patch2 = BboxPatch(bbox2, **prop_patches)

    p = BboxConnectorPatch(bbox1, bbox2,
                           #loc1a=3, loc2a=2, loc1b=4, loc2b=1,
                           loc1a=loc1a, loc2a=loc2a, loc1b=loc1b, loc2b=loc2b,
                           **prop_patches)
    p.set_clip_on(False)

    return c1, c2, bbox_patch1, bbox_patch2, p


def zoom_effect01(ax1, ax2, xmin, xmax, **kwargs):
    """
    ax1 : the main axes
    ax1 : the zoomed axes
    (xmin,xmax) : the limits of the colored area in both plot axes.

    connect ax1 & ax2. The x-range of (xmin, xmax) in both axes will
    be marked.  The keywords parameters will be used ti create
    patches.

    """

    trans1 = blended_transform_factory(ax1.transData, ax1.transAxes)
    trans2 = blended_transform_factory(ax2.transData, ax2.transAxes)

    bbox = Bbox.from_extents(xmin, 0, xmax, .2)
    bbox2 = Bbox.from_extents(xmin, 0, xmax, 1)
    mybbox1 = TransformedBbox(bbox, trans1)
    mybbox2 = TransformedBbox(bbox2, trans2)

    prop_patches=kwargs.copy()
    prop_patches["ec"]="none"
    prop_patches["alpha"]=0.2

    c1, c2, bbox_patch1, bbox_patch2, p = \
        connect_bbox(mybbox1, mybbox2,
                     loc1a=3, loc2a=2, loc1b=4, loc2b=1,
                     prop_lines=kwargs, prop_patches=prop_patches)

    ax1.add_patch(bbox_patch1)
    ax2.add_patch(bbox_patch2)
    ax2.add_patch(c1)
    ax2.add_patch(c2)
    ax2.add_patch(p)

    return c1, c2, bbox_patch1, bbox_patch2, p


def zoom_effect02(ax1, ax2, **kwargs):
    """
    ax1 : the main axes
    ax1 : the zoomed axes

    Similar to zoom_effect01.  The xmin & xmax will be taken from the
    ax1.viewLim.
    """

    tt = ax1.transScale + (ax1.transLimits + ax2.transAxes)
    trans = blended_transform_factory(ax2.transData, tt)

    mybbox1 = ax1.bbox
    mybbox2 = TransformedBbox(ax1.viewLim, trans)

    prop_patches=kwargs.copy()
    prop_patches["ec"]="none"
    prop_patches["alpha"]=0.2

    c1, c2, bbox_patch1, bbox_patch2, p = \
        connect_bbox(mybbox1, mybbox2,
                     loc1a=3, loc2a=2, loc1b=4, loc2b=1,
                     prop_lines=kwargs, prop_patches=prop_patches)

    ax1.add_patch(bbox_patch1)
    ax2.add_patch(bbox_patch2)
    ax2.add_patch(c1)
    ax2.add_patch(c2)
    ax2.add_patch(p)

    return c1, c2, bbox_patch1, bbox_patch2, p



import scipy.io
x_30 = scipy.io.loadmat('tt_30_5_6.mat')
x_40 = scipy.io.loadmat('tt_40_6_6.mat')
x_50 = scipy.io.loadmat('tt_50_6_7.mat')

tt_30 = x_30['tt']
tt_40 = x_40['tt']
tt_50 = x_50['tt']

from matplotlib.patches import Ellipse
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
gs1.update(left=0.18, right=.95,bottom=.16,top=0.95, hspace=0.5)
t = np.arange(0, 414, 1)

#print t.shape
#print tt_30[0].shape
print "30 dB"
print sum(tt_30[0])
print "40 dB"
print sum(tt_40[0])
print "50 dB"
print sum(tt_50[0])
fig1 = pylab.figure()
pylab.clf()
#pylab.axes([0.18,0.1,0.95-0.17,0.95-0.22])


ax1 = pylab.subplot(gs1[0,:])
l30, = pylab.plot(t,tt_30[0],'r--',label='30 dB')
l40, = pylab.plot(t,tt_40[0],'g-.',label='40 dB')
l50, = pylab.plot(t,tt_50[0],'b-',label='50 dB')
pylab.xlabel('Flip-Flop index')
pylab.ylabel(r'Tolerated $p_e$')
pylab.text(250,.3,'QR', fontsize=8,style='italic', fontweight='bold')
pylab.legend()

ax2 = pylab.subplot(gs1[1:,:])
l30, = pylab.plot(t,tt_30[0],'r--',label='30 dB')
l40, = pylab.plot(t,tt_40[0],'g-.',label='40 dB')
l50, = pylab.plot(t,tt_50[0],'b-',label='50 dB')
#pylab.legend()

pylab.xlabel('Flip-Flop index')
pylab.ylabel(r'Tolerated $p_e$')
#pylab.text(250,.3,'QR', fontsize=30,style='italic', fontweight='bold')
ax2.set_ylim([0, 0.001])
ax2.set_xlim([12, 50])

zoom_effect01(ax1, ax2,12, 50)
#zoom_effect02(ax1, ax2)


pylab.savefig('optimization_qr.pdf')
#pylab.show()
