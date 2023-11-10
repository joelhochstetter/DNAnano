'''
This script generates a cylinder force box for enclosing the pore
Inputs:
n - number of edges
r - radius
b - box size
s - stiffness

Output file: 
force_cylinder.conf

Usage: python3 generate_cylinder.py n r b s force_file.conf

To generate a cylinder not force plane:
python3 generate_cylinder.py 0 r b s force_file.conf h
'''

import sys
import numpy as np

n         = int(sys.argv[1]);
r         = float(sys.argv[2]);
b         = float(sys.argv[3]);
stiffness = float(sys.argv[4]);
forceFile = sys.argv[5];
if len(sys.argv) >= 7:
    h  = float(sys.argv[6])

if len(sys.argv) == 8:
    z = float(sys.argv[7])
else:
    z = b/2


with open(forceFile, "a") as myfile:
    if n > 0:
        for m in range(n):
            u = -np.cos(2*np.pi/n*m);
            v = -np.sin(2*np.pi/n*m);
            P = r*(u**2 + v**2) - b/2*(u + v);
            myfile.write('\n\n{\ntype = repulsion_plane\nparticle = -1\nstiff = ' + str(stiffness) + '\ndir = ' + str(u) + ', ' + str(v) + ', 0.0\nposition = ' + str(P) + '\n}\n')
    else:
        myfile.write('\n\n{\ntype = repulsion_cylinder\nparticle = -1\nstiff = ' + str(stiffness) + '\ndir = 0, 0, 1\ncenter = ' + str(b/2) + ', ' + str(b/2) + ', ' + str(z) + '\nr0 = ' + str(r) + '\nheight = ' + str(h) + '\n}\n')
