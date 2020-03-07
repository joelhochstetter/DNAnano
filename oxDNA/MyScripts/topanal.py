import sys
import numpy

top = sys.argv[1]
threep = []
fivep = []
lens = []
d = 0

with open(top, 'r') as r:
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
print(threep)
print(fivep)
print(lens)
