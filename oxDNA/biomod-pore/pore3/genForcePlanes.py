#generates force planes centred at centre of box
import numpy as np
import sys

Pi = np.pi
r = float(sys.argv[1]) #radius of barrel
N = int(sys.argv[2]) #Number of sides
box = float(sys.argv[3]) #box size

x0 = box/2
y0 = box/2
z0 = 0

def genPlane(n, N, r, box):
	u = round(np.cos(2*Pi*n/N),5)
	v = round(np.sin(2*Pi*n/N),5)
	w = 0
	d = -round(u*(x0 - r*u) + v*(y0 - r*v) + w*(z0 - r*w),5)
	return [u, v, w, d]

with open('external.conf', 'a') as f:
	for n in range(0,N):
		q = genPlane(n,N,r,box)
		f.write('\n{\ntype = repulsion_plane \n particle = -1 \n stiff = 0.001\n')
		f.write('dir = ' +  str(q[0]) + ',' +  str(q[1]) + ',' +  str(q[2]))
		f.write('\nposition = ' + str(q[3]) + '\n}\n')
