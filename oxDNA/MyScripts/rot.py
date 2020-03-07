#Rotates DNA configuration

import sys
import numpy as np
#add rotations https://en.wikipedia.org/wiki/Rotation_matrix#Basic_rotations

boxdims = [0.0, 0.0, 0.0]

pos = [0.0, 0.0,0.0]

ro=[0.0,0.0,0.0]

inp = sys.argv[1]
ro[0] = int(sys.argv[2]) #x<->y
ro[1] = int(sys.argv[3]) #y<->z
ro[2] = int(sys.argv[4]) #z<->x
out = "rot" + inp
tmp = 0.0
with open(inp, 'r') as r:
    with open(out, 'w+') as w:
        for line in r:
            i = 0
            cells = line.split()
            if cells == []: continue
            if cells[0] in ['t', 'E', 'b']:
                w.write(line)
                if cells[0] == 'b':
                    for j in range(0,3):
                        boxdims[j] = cells[j+2]
                continue
            for el in cells:
                if i < 3:
                    pos[i] = float(el)
                else:
                    if i == 3:
                        if ro[0] == 1:
                            tmp=pos[1]
                            pos[1]=pos[0]
                            pos[0]=tmp
                        if ro[1] == 1:
                            tmp=pos[2]
                            pos[2]=pos[1]
                            pos[1]=tmp                            
                        if ro[2] == 1: 
                            tmp=pos[2]
                            pos[2]=pos[0]
                            pos[0]=tmp
                        for c in range(0,3): 
                            if pos[c] < 0 or pos[c] > boxdims[c]:
                                print "Error: Points shifted outside box"
                                sys.exit()                     
                        w.write(str(pos[0]) + " " + str(pos[1]) + " " + str(pos[2]) + " ")                          
                    w.write(el + " ")
                i+=1    
            w.write('\n')
            
