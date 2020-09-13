'''
This script generates a new force file and fixes 
Inputs:
n - number of edges
r - radius
b - box size

Output file: 
force_cylinder.conf

Usage: python fix_tether.py topFile.top force_file.conf b stiffness [sep]
'''

import sys
import numpy as np

topFile   = sys.argv[1];
forceFile = sys.argv[2];
b         = float(sys.argv[3]);
stiffness = float(sys.argv[4]);

if len(sys.argv) >= 6:
    sep = float(sys.argv[5])
else:
    sep = 21.14 #tether separation ~18.0nm

if len(sys.argv) == 7:
    z = float(sys.argv[6])
else:
    z = b/2


threep = [] #idx of 3' end
fivep = []  #idx of 5' end
lens = []   #lengths
d = 0

with open(topFile, 'r') as r:
   for line in r:
      cells = line.split()
      if len(cells) < 4:
        continue
      if cells[2] == '-1':
        threep.append(int(cells[3]) - 1)
        d=int(cells[3]) - 1
      if cells[3] == '-1': 
        fivep.append(int(cells[2]) + 1)
        lens.append(int(cells[2]) + 2 - d)


t1 = threep[lens.index(max(lens))]
t2 = fivep[lens.index(max(lens))]


with open(forceFile, "a") as myfile:
    x1 = b/2 - sep/2
    y1 = b/2
    z1 = z
    myfile.write('\n\n{\ntype = trap\nparticle = ' + str(t1) + '\nstiff = ' + str(stiffness) + '\npos0 = ' + str(x1) + ',' + str(y1) + ',' + str(z1) + '\nrate = 0.0\ndir = 1.0, 0.0, 0.0\n}\n\n')
 
    x2 = b/2 + sep/2
    y2 = b/2
    z2 = z       
    myfile.write('\n\n{\ntype = trap\nparticle = ' + str(t2) + '\nstiff = ' + str(stiffness) + '\npos0 = ' + str(x2) + ',' + str(y2) + ',' + str(z2) + '\nrate = 0.0\ndir = 1.0, 0.0, 0.0\n}\n\n')
    
