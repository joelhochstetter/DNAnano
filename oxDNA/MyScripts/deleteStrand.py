#!/usr/bin/env python

import base
import os.path
import sys

topoFile = sys.argv[1]
confFile = sys.argv[2]
forcFile = sys.argv[3]
nDel = len(sys.argv) - 4
toDel = []
for i in range(4, len(sys.argv)):
    toDel.append(int(sys.argv[i]))

print('To delete', toDel)

sqs, startNt, endNt, nn, ns, allDNA = getStrands(topoFile)
newNtIdx, newStIdx, newNumNt, newNumSt = getDeleteMapping(sqs, startNt, endNt, nn, ns, toDel)




def getStrands(topoFile):
    inp = open (topoFile, 'r')

    lines = inp.readlines ()

    nn = int (lines[0].split()[0])
    ns = int (lines[0].split()[1])

    print('detected ' + str(ns) + ' strands and a total of ' + str(nn) + 'nucleotides')

    startNt =  [0 for i in xrange(ns)]
    endNt   =  [0 for i in xrange(ns)]
    
    allDNA = []

    sqs = ['' for i in xrange (ns)]
    for line in lines[1:]:
        words = line.split()
        index = int(words[0]) - 1
        sqs[index] += words[1]
        allDNA.append(words[1])
        if int(words[2]) == -1:
            startNt[index] = int(words[3]) - 1
        if int(words[3]) == -1:
            endNt[index] = int(words[2]) + 1        

    sidx = 0

    print("Printing 5' to 3'")
    for s in sqs:
        print('SeqIdx:',sidx+1,'Length: ', endNt[sidx]-startNt[sidx]+1,'Start: ',startNt[sidx],'End: ',endNt[sidx],s[::-1])
        sidx += 1
        
    inp.close ()
    return sqs, startNt, endNt, nn, ns, allDNA


def getDeleteMapping(sqs, startNt, endNt, nn, ns, toDel):
    newNtIdx  = list(range(nn))
    newStIdx  = list(range(1, ns + 1))    
    for d in range(toDel):
        newIdx[startNt[d]:endNt[d] + 1] = -1
        newStIdx[d] = -1
    
    subtract = 0
    for s in range(ns):
        if newStIdx[s] == -1:
            subtract += 1
        else:
            newStIdx[s] -= subtract
    
    newNumSt = ns - subtract
    
    subtract = 0
    for n in range(nn):
        if newNtIdx[s] == -1:
            subtract += 1
        else:
            newNtIdx[s] -= subtract   
        
    newNumNt = nn - subtract
    return newNtIdx, newStIdx, newNumNt, newNumSt


def delConf(confFile, newNtIdx, newStIdx, newNumNt, newNumSt):
    print(' ')
    return
    
    
def delForc(forcFile, newNtIdx, newStIdx):
    print(' ')
    # code up rest of this
    return
    
    
def newTopo(topoFile, newNtIdx, newStIdx, startNt, endNt, newNumNt, newNumSt, allDNA):
    if os.path.isfile('new.top'):
        print('topology file already exists. TERMINATING')
        return
    
    with open('new.top', 'w') as f:
        f.write(str(newNumNt) + ' ' + str(newNumSt) + '\n')
        for i in range(len(newStIdx)):
            if newStIdx[i] != -1:
                j = 0
                for n in range(startNt[i], endNt[i] + 1):
                    f.write(str(newStIdx[i]) + ' ' + allDNA[n] + ' ' + str(j - 1)
                    
                    #code up rest of this
    return
