import sys
import numpy as np

inp = sys.argv[1]
nt = int(sys.argv[2]) #number of times in the file
nn = int(sys.argv[3]) #number of nucleotides in file
out = sys.argv[4] #output file names

pts = [330] #enter number of points here
ncols=len(pts)*3+1

data = np.zeros((nt, ncols)) #last column contains times

lnum = 1
j = -1

with open(inp, 'r') as r:
   for line in r:
      cells = line.split()
      if cells[0] == 't':
         j+=1 
         data[j][ncols-1]  = float(cells[2])
      elif cells[0] not in ['E', 'b']:
         if (lnum - 4) % (nn + 3) in pts:
            data[j][pts.index((lnum - 4) % (nn + 3))*3]=cells[0]
            data[j][pts.index((lnum - 4) % (nn + 3))*3+1]=cells[1]
            data[j][pts.index((lnum - 4) % (nn + 3))*3+2]=cells[2]
      lnum+=1
      if j == nt: 
         break



np.savetxt(out, data)
