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

    print(numConn)
    with open(forceFile, "a") as myfile:
        if numConn == 1:
            for n in range(4):
                t = 20*(n+1) - 1
                x = getX(xc,r,c1n[n])
                y = getY(yc,r,c1n[n])
                z = zVals[c1c[n]]
                myfile.write('\n\n{\ntype = trap\nparticle = ' + str(t) + '\nstiff = ' + str(stiffness) + '\npos0 = ' + str(x) + ',' + str(y) + ',' + str(z) + '\nrate = 0.0\ndir = 1.0, 0.0, 0.0\n}\n\n')

        elif numConn == 3:
            for n in range(11):
                t = 20*(n+1) - 1
                x = getX(xc,r,c3n[n])
                y = getY(yc,r,c3n[n])
                z = zVals[c3c[n]]
                myfile.write('\n\n{\ntype = trap\nparticle = ' + str(t) + '\nstiff = ' + str(stiffness) + '\npos0 = ' + str(x) + ',' + str(y) + ',' + str(z) + '\nrate = 0.0\ndir = 1.0, 0.0, 0.0\n}\n\n')


    
def getX(xc, r, n):
    return xc + r*np.cos((1-n)*np.pi/3)

def getY(yc, r, n):
    return yc + r*np.sin((1-n)*np.pi/3)
    
    
fix_connectors()
