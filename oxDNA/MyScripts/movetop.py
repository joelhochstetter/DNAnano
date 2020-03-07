import sys
import numpy

top = sys.argv[1]
out = sys.argv[2]
sn = int(sys.argv[3]) #strand number
nn = int(sys.argv[4]) #helix number start

with open(top, 'r') as r:
    with open(out, 'w') as w:
        for line in r:
            cells = line.split()
            if len(cells) < 4:     
                continue
            w.write(str(int(cells[0])+sn) + ' ' + cells[1] + ' ')
            if cells[2] == '-1':
                w.write(cells[2] + ' ' + str(int(cells[3])+nn) + '\n')
            elif cells[3] == '-1':
                w.write(str(int(cells[2])+nn) + ' -1' + '\n')
            else:
                w.write(str(int(cells[2])+nn) + ' ' + str(int(cells[3])+nn) + '\n')
