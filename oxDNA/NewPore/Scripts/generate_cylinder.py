'''
This script generates a cylinder force box for enclosing the pore
Inputs:
n - number of edges
r - radius
b - box size

Output file: 
force_cylinder.conf

Usage: python generate_cylinder.py n r b s force_file.conf
'''

import sys
import numpy as np

n         = int(sys.argv[1]);
r         = float(sys.argv[2]);
b         = float(sys.argv[3]);
stiffness = float(sys.argv[4]);
forceFile = sys.argv[5];

with open(forceFile, "a") as myfile:
    for m in range(n):
        u = -np.cos(2*np.pi/n*m);
        v = -np.sin(2*np.pi/n*m);
        P = r*(u**2 + v**2) - b/2*(u + v);
        myfile.write('\n\n{\ntype = repulsion_plane\nparticle = -1\nstiff = ' + str(stiffness) + '\ndir = ' + str(u) + ', ' + str(v) + ', 0.0\nposition = ' + str(P) + '\n}\n')
        
