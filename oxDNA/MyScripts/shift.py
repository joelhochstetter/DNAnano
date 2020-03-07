#Python code to shift all DNA inside the box

import sys
import numpy as np
#add rotations https://en.wikipedia.org/wiki/Rotation_matrix#Basic_rotations


tr = []
inp = sys.argv[1]
tr.append(sys.argv[2])
tr.append(sys.argv[3])
tr.append(sys.argv[4])
#ro.append(sys.argv[5])
#ro.append(sys.argv[6])
#ro.append(sys.argv[7])

boxdims = [0.0, 0.0, 0.0]
out = "shift" + inp

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
                    newval = float(el)+float(tr[i])
                    if newval < 0 or newval > boxdims[i]:
                        print newval
                        print "Error: Points shifted outside box"
                        sys.exit()
                    w.write(str(newval) + " ")
                else:
                    w.write(el + " ")
                i+=1
            w.write('\n')
            
