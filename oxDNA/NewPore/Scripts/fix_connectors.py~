import sys
import numpy as np


def fix_connectors():
    forceFile = sys.argv[1];
    numConn   = int(sys.argv[2]);
    stiffness = float(sys.argv[3]);
    
    if len(sys.argv) >= 3:
        r = float(sys.argv[4])
    else:
        r = 21.14/2 #tether separation ~18.0nm

    blueZ  = 64.87
    redZ   = 55.09
    blackZ = 39.82

    xc = 50.0
    yc = 50.0

    zVals = [blueZ, redZ, blackZ]
    #classify 0 = blue, 1 = red, 2 = black
    
    c1c = [2,2,2,2]               #conn1class: blue, red, black
    c3c = [2,0,2,0,2,0,2,1,1,1,1] #conn3class
    c1n = [0,1,3,4]               #connectors 1, n (# of helix)    
    c3n = [0,1,1,2,3,4,4,0,3,2,5] #connectors 3, n (# of helix)
    c6c = [0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2] #connectors 3x6, n (# of helix)    
    c6n = [1,1,1,0,0,0,3,3,3,2,2,2,5,5,5,4,4,4] #connectors 3x6, n (# of helix)

    if numConn == 1:
        Nvals = range(4)
        X = 20
        cn = c1n
        cc = c1c
    elif numConn == 3:
        Nvals = range(11)
        X = 20
        cn = c3n
        cc = c3c        
    elif numConn == 6:
        #Nvals = [6,7,8,15,16,17,24,25,26,33,34,35,42,43,44,51,52,53]
        Nvals = [6,7,8]
        X = 21
        cn = c6n
        cc = c6c  
                
    print(numConn)
    with open(forceFile, "a") as myfile:
        for i in range(len(Nvals)):            
            t = X*(Nvals[i]+1) - 1
            x = getX(xc,r,cn[i])
            y = getY(yc,r,cn[i])
            z = zVals[cc[i]]
            myfile.write('\n\n{\ntype = trap\nparticle = ' + str(t) + '\nstiff = ' + str(stiffness) + '\npos0 = ' + str(x) + ',' + str(y) + ',' + str(z) + '\nrate = 0.0\ndir = 1.0, 0.0, 0.0\n}\n\n')

    
def getX(xc, r, n):
    return xc + r*np.cos((1-n)*np.pi/3)
    #return xc - r*np.cos(n*np.pi/3)    

def getY(yc, r, n):
    return yc + r*np.sin((1-n)*np.pi/3)
    #return yc - r*np.sin(n*np.pi/3)    
    
fix_connectors()
