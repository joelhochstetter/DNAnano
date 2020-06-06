#generates force planes centred at centre of box
import numpy as np
import sys

Pi = np.pi
r = float(sys.argv[1]) #radius of barrel
box = float(sys.argv[2]) #box size
s = sys.argv[3] #start nt number for tether
e = sys.argv[4] #end nt number for tether

xs = box/2-r
xe = box/2+r
y0 = box/2
z0 = box/2

with open('external.conf', 'a') as f:
	f.write('\n{\ntype = trap \nparticle = ' + s + ' \nstiff = 0.001\n')
	f.write('pos0 = ' +  str(xs) + ',' +  str(y0) + ',' +  str(z0))
	f.write('\nrate = 0.0\ndir = 0.0, 0.0, 1.0\n}\n')

	f.write('\n{\ntype = trap \nparticle = ' + e + ' \nstiff = 0.001\n')
	f.write('pos0 = ' +  str(xe) + ',' +  str(y0) + ',' +  str(z0))
	f.write('\nrate = 0.0\ndir = 0.0, 0.0, 1.0\n}\n')

	
