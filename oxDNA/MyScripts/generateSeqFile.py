'''
This script takes a json files and scaffold and creates 


The algorithm works by first parsing through the rows, columns of the json file
scafID is used to label the scaffold nt: scafID = -1. No scaffold nt.
scafID >= 0 corresponds to scaffold strands. The largest is determined to be the
main scaffold strand. The smallest can be determined by using the python file /
excel file.

scafperm is the index of the nt of scaffold to allocate the 5' end of the long 
scaffold strand in the origami design

'''

import sys
import numpy as np

jsonfile = sys.argv[1]
scaffile = sys.argv[2]
scafperm = sys.argv[3]


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
    [scafID, scafLens, scaf3End, scaf5End] = findStrands(vstrands)
   
    #import the scaffold
    with open(scaffile, 'r') as s:
        scafDNA = s[0] 
        
    #permute scaffold to the correct orientation
    scafDNA = scafDNA[scafperm:] + scafDNA[:scafperm]    
    
    #generate strands in sqs format to be parsed by oxDNA
    rowSeq = ["R" * numCols for idx in range(numRows)]
    
    #set longest strand with some scaffold permutation
    longScaf = np.argmax(scafLens)    
    rowSeq = setLongScaf(rowSeq, scaf3End[longScaf], scaf5End[longScaf], scafDNA) #update row seq
    
    #set other short scaffold strands
    rowSeq = setShortScaf(rowSeq, scaf3End, scaf5End, longScaf) #update row seq    
    
    #write sequence to file caca.sqs
    with open("caca.sqs","w+") as f:
        for i in range(numRows):
            f.write(rowSeq[i])    
	print('Written scaffold sequence to caca.sqs')
	
	return


        

def findStrands(vstrands):
    numRows = len(vstrands)
    numCols = len(vstrands[0]['scaf'])

    scafID   = -1*np.ones((numRows, numCols)) #ID for which scaffold for a given strand
    scafLens = [] #stores length of strand of each scaffold in number of nt
    scaf3End = [] #stores row, column pairing for 3' end of each scaf strand
    scaf5End = [] #stores row, column pairing for 5' end of each scaf strand
    scafCnt  = 0 #counts the index of current scaffold strand

    #loop through nt in json file
    for i in range(numRows):
        for j in range(numCols):  
            odd = i % 2
            #if is 5' end of a strand  
            if scafID[i][j] == -1 and vstrands[i]['scaf'][j][odd*2] == -1
                scaf5End[scafCnt] = [i,j]
                currRow = i
                currCol = j
                length = 1
                while vstrands[currCol]['scaf'][currRow][(1-odd)*2] != -1
                    currRow = vstrands[currCol]['scaf'][currRow][(1-odd)*2 + 0]
                    currCol = vstrands[currCol]['scaf'][currRow][(1-odd)*2 + 1]
                    length++
                    odd = currRow % 2
                
                scafLens[scafCnt] = length
                scaf3End = [currRow, currCol]
                scafCnt++
    return [scafID, scafLens, scaf3End, scaf5End]




def setLongScaf(rowSeq, ls3End, ls5end, scafDNA):
    odd = i % 2
    currRow = ls5end[0]
    currCol = ls5end[1]
    idx = 1
    
    #loop from 5' to 3' updating DNA
    while vstrands[currCol]['scaf'][currRow][(1-odd)*2] != -1
        currRow = vstrands[currCol]['scaf'][currRow][(1-odd)*2 + 0]
        currCol = vstrands[currCol]['scaf'][currRow][(1-odd)*2 + 1]
        rowSeq[currRow][currCol]  = scafDNA[idx]
        idx++
        odd = currRow % 2    
    
    #update end
    rowSeq[ls3End[0]][ls3End[1]] = scafDNA[idx]
    
    return rowSeq
    
    
    

def setShortScaf(rowSeq, scaf3End, scaf5End, longScaf):
    
    return rowSeq
    


genSeqFile(jsonfile, scaffile, scafperm)
