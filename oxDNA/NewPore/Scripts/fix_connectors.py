import sys
import numpy as np


def fix_connectors():
    forceFile = sys.argv[1];
    numConn   = int(sys.argv[2]);
    stiffness = float(sys.argv[3]);
    
    if len(sys.argv) > 4:
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
    #0-2-4
    #1-2-4-5
    #1-2-4-5
    #old set-up    
    c4c = [0,1,2,0,1,2,0,1,2,1,2] #connectors 3-3-4, n (# of helix)    
    c4n = [2,2,2,0,1,1,4,4,4,5,5] #connectors 3-3-4, n (# of helix)    
    c6c = [0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2] #connectors 3x6, n (# of helix)    
    c6n = [1,1,1,0,0,0,3,3,3,2,2,2,5,5,5,4,4,4] #connectors 3x6, n (# of helix)

    
    c4c = [2,2,2,2,2,2] #connectors 1x6, n (# of helix)   
    c4n = [1,0,3,2,5,4] #connectors 1x6, n (# of helix)       
    
    c7c = [0,2,0,2,0,2,0,2,0,2,0,2] #connectors 3x6, n (# of helix)   
    c7n = [1,1,0,0,3,3,2,2,5,5,4,4] #connectors 3x6, n (# of helix)     

    c11c = [0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2] #connectors 3x6, n (# of helix)   
    c11n = [1,1,1,0,0,0,3,3,3,2,2,2,5,5,5,4,4,4] #connectors 3x6, n (# of helix)   


    p5 = 1
    

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
        Nvals = [6,7,8,12,13,14,18,19,20,26,27,28,32,33,34,38,39,40]
        X = 21
        cn = c6n
        cc = c6c  
    elif numConn == 4:
        X = 31
        cn = c4n
        cc = c4c
        Nvals = range(6)
        p5 = 0
    elif numConn == 7:
        X = 31
        cn = c7n
        cc = c7c    
        Nvals = range(12)   
        p5 = 0                 
    elif numConn == 11:
        X = 31
        cn = c11n
        cc = c11c             
        Nvals = range(18) 
        p5 = 0              
    #old set-up
    '''
    elif numConn == 4:
        Nvals = [6,7,8,12,13,14,18,19,20,26,27]
        X = 21
        cn = c4n
        cc = c4c  
    '''
    
                    
    print(numConn)
    with open(forceFile, "a") as myfile:
        for n in range(len(Nvals)):
            t = X*(Nvals[n] + p5) - p5
            x = getX(xc,r,cn[n])
            y = getY(yc,r,cn[n])
            z = zVals[cc[n]]
            myfile.write('\n\n{\ntype = trap\nparticle = ' + str(t) + '\nstiff = ' + str(stiffness) + '\npos0 = ' + str(x) + ',' + str(y) + ',' + str(z) + '\nrate = 0.0\ndir = 1.0, 0.0, 0.0\n}\n\n')

    
def getX(xc, r, n):
    #return xc + r*np.cos((1-n)*np.pi/3)
    return xc - r*np.cos(n*np.pi/3)    

def getY(yc, r, n):
    #return yc + r*np.sin((1-n)*np.pi/3)
    return yc + r*np.sin(n*np.pi/3)    
    
fix_connectors()
