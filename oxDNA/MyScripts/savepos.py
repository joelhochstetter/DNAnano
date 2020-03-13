'''
    Saves position, velocity and rotational velocity
    Inputs:
        inp: name of trajectory file
        out: name of output file
        pos: (binary) whether or not to store position
        vel: (binary) whether or not to store particle velocities
        rot: (binary) whether or not to store position

    Outputs:
        saves data to file 'out'
        saves column names to file 'out'+"col_file"+'.SOMETHING'

'''


import sys
import numpy as np

inp = sys.argv[1]
out = sys.argv[2] #output file names
pos = int(sys.argv[3])
vel = int(sys.argv[4])
rot = int(sys.argv[5])



#fetch number of times and number of nucleotides
nt = 0
nn = 0
with open(inp, 'r') as r:
   for line in r:
      cells = line.split()
      if cells[0] == 't':
         nt += 1 
      elif (cells[0] not in ['E', 'b']) and nt <= 1:
         nn += 1

pts = range(nn)#[330] #enter number of points here
ncols=len(pts)*(pos + vel + rot)*3+1

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
            start_from = 0
            if pos:
                data[j][pts.index((lnum - 4) % (nn + 3))*3]  =cells[0]
                data[j][pts.index((lnum - 4) % (nn + 3))*3+1]=cells[1]
                data[j][pts.index((lnum - 4) % (nn + 3))*3+2]=cells[2]
                start_from += 3
            if vel:
                data[j][pts.index((lnum - 4) % (nn + 3))*3   + start_from] =cells[9]
                data[j][pts.index((lnum - 4) % (nn + 3))*3+1 + start_from] =cells[10]
                data[j][pts.index((lnum - 4) % (nn + 3))*3+2 + start_from] =cells[11]
                start_from += 3      
            if rot:
                data[j][pts.index((lnum - 4) % (nn + 3))*3   + start_from] =cells[12]
                data[j][pts.index((lnum - 4) % (nn + 3))*3+1 + start_from] =cells[13]
                data[j][pts.index((lnum - 4) % (nn + 3))*3+2 + start_from] =cells[14]             
      lnum+=1
      if j == nt: 
         break

np.savetxt(out, data)

splits = out.split('.')
col_file = splits[0] + 'cols' + '.' + splits[1]

#save columns
with open(col_file, 'w') as f:
    f.write('number of nucleotides tracked =  ' + str(len(pts)) + '\n')  
    for i in range(len(pts)):
        if pos:
            f.write("x-position of particle " + str(pts[i]) + "\ny-position of particle " + str(pts[i]) +  "\nz-position of particle " + str(pts[i]) + '\n') 
        if vel:
            f.write("x-velocity of particle " + str(pts[i]) + "\ny-velocity of particle " + str(pts[i]) +  "\nz-velocity of particle " + str(pts[i]) + '\n') 
        if rot:
            f.write("x-angular velocity of particle " + str(pts[i]) + "\ny-angular velocity of particle " + str(pts[i]) +  "\nz-angular velocity of particle " + str(pts[i]) + '\n') 
    f.write("time\n")
