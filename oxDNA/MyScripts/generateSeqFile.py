'''
This script takes a json files and scaffold and creates 


The algorithm works by first parsing through the rows, columns of the json file
scafID is used to label the scaffold nt: scafID = -1. No scaffold nt.
scafID >= 0 corresponds to scaffold strands. The largest is determined to be the
main scaffold strand. The smallest can be determined by using the python file /
excel file.

scafperm is the index of the nt of scaffold to allocate the 5' end of the long 
scaffold strand in the origami design


Last edited: 3/6/20
'''

import sys
import numpy as np
import os
import json

jsonfile = sys.argv[1]
scaffile = sys.argv[2]
scafperm = int(sys.argv[3])


def genSeqFile(jsonfile, scaffile, scafperm):

    #checks if file exists and exit if it doesn't
    if os.path.isfile('caca.sqs'):
        print('ERROR: sequence file already exists')
        print('TERMINATING')
        return

    #import cadnanofile
    with open(jsonfile) as json_file:
        cadnano = json.load(json_file)    

    #get virtual strands as list to edit. vstrands[0] gives a particular row
    vstrands = cadnano['vstrands']
    numRows = len(vstrands)
    numCols = len(vstrands[0]['scaf']) 
    
    #find scaffold strands: get starting and ending nucleotides and length    
    scafID, scafLens, scaf3End, scaf5End = findStrands(vstrands)
   
    #import the scaffold
    with open(scaffile, 'r') as s:
        scafDNA = s.readline() #get first row (only row) of scaffold sequence
        scafDNA = scafDNA.rstrip() #remove trailing newline character
    
        
    #permute scaffold to the correct orientation
    scafDNA = scafDNA[scafperm:] + scafDNA[:scafperm]    
    
    #generate strands in sqs format to be parsed by oxDNA
    rowSeq = [list("R" * numCols) for idx in range(numRows)]
    
    #set longest strand with some scaffold permutation
    longScaf = np.argmax(scafLens)    
    rowSeq = setLongScaf(rowSeq, scaf3End[longScaf], scaf5End[longScaf], scafDNA, vstrands) #update row seq
    
    #set other short scaffold strands
    rowSeq = setShortScaf(rowSeq, scaf3End, scaf5End, longScaf) #update row seq    
    
    #write sequence to file caca.sqs
    with open("caca.sqs","w+") as f:
        for i in range(numRows):
            f.write(''.join(rowSeq[i]))
            f.write('\n')
    print('Written scaffold sequence to caca.sqs')
    
    return


        

def findStrands(vstrands):
    numRows = len(vstrands)
    numCols = len(vstrands[0]['scaf'])

    scafID   = -1*np.ones((numRows, numCols)) #ID for which scaffold for a given strand
    scafLens = [] #stores length of strand of each scaffold in number of nt
    scaf3End = [] #stores row, column pairing for 3' end of each scaf strand
    scaf5End = [] #stores row, column pairing for 5' end of each scaf strand

    #loop through nt in json file
    for i in range(numRows):
        for j in range(numCols):  
        
            #print(vstrands[i]['scaf'][j])
        
            #if is 5' end of a strand  
            if scafID[i][j] == -1 and vstrands[i]['scaf'][j][0] == -1 and vstrands[i]['scaf'][j][2] != -1:
                scaf5End.append([i,j])
                currRow = i
                currCol = j
                length = 1
                
                while vstrands[currRow]['scaf'][currCol][2] != -1:
                    prevRow = currRow
                    prevCol = currCol
                    currRow = vstrands[prevRow]['scaf'][prevCol][2]
                    currCol = vstrands[prevRow]['scaf'][prevCol][3]
                    length += 1
                    
                scafLens.append(length)
                scaf3End.append([currRow, currCol])
    
    print('Num scaf detected: ', len(scafLens))
    print('Scaffold lengths: ', scafLens)    
    print("Scaffold 3' ends: ", scaf3End)    
    print("Scaffold 5' ends: ", scaf5End)    

    return scafID, scafLens, scaf3End, scaf5End




def setLongScaf(rowSeq, ls3End, ls5end, scafDNA, vstrands):

    currRow = ls5end[0]
    currCol = ls5end[1]
    
    idx = 0
    
    #loop from 5' to 3' updating DNA
    while vstrands[currRow]['scaf'][currCol][2] != -1:
        rowSeq[currRow][currCol]  = scafDNA[idx] 
        prevRow = currRow
        prevCol = currCol
        currRow = vstrands[prevRow]['scaf'][prevCol][2]
        currCol = vstrands[prevRow]['scaf'][prevCol][3]
        idx += 1
    
    #update end
    rowSeq[ls3End[0]][ls3End[1]] = scafDNA[idx]
    
    print('Long scaffold DNA added:')
    print(scafDNA[0:idx+1])
    
    return rowSeq
    
    
    

def setShortScaf(rowSeq, scaf3End, scaf5End, longScaf):
    
    return rowSeq
    


genSeqFile(jsonfile, scaffile, scafperm)
