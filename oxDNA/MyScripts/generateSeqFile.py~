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

brunnette     = list("TTCCTCTACCACCTACATCAC")
apollo        = list("CCTACTGACTTTATCCACCGA")
minerva       = list("CCTAATTACGATGCTACTCCC")
jupiter       = list("GCTCTGCAATCAACTTATCCC")      
juno          = list("CGTCCCCTTTTAACCCTAGAA")          
neptune       = list("CGACTCTCATTCTCTAACAGC") 
venus         = list("CGTACAACCTTGACCTTACCT")  

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
    
    rowSeq = customSeqs(rowSeq, numRows, numCols, jsonfile)
    
    
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
    

def customSeqs(rowSeq, numRows, numCols, jsonfile):
    print(numRows, numCols, jsonfile, numRows == 10 and numCols == 147 and jsonfile == "cinch6_clen42x3_spacer0_one_sided.json")
    if numRows == 10 and numCols == 147 and jsonfile == "cinch6_clen42x3_spacer0_one_sided.json":
        print('WARNING: Using specified tether seqeunces')
        rowSeq[6] = list("CCTGTTGGAGTTTGCTTCCGGTCTGGTTCGCTTTGAAGCTCGAATTAAAACGCGATATTTGCCATCCGCAAAAATGACCTCRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR") 
        rowSeq[7] = list("AGTCCTAATCTCTCATGGAAATTAACGAGGAAAACTATTCTCCAGTAAAAACGCCTACCGTTTATAGCGCAAAATTAAGCTRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR")
        rowSeq[8] = list("TCTTGTCAAGATTACTCTTGATGAAGGTCAGCCAGCCTATGCGCCTGGTCTGTACACCGTCAAGCCTTATTCACTGAATGARRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR")
        rowSeq[9] = list("TGGCCTATAAGTAATGGGTTTAGTTGCATTGTTTCGACGAGTAAGTCACTTATTCCGAACTGCCACATGTCTGGTCCGCGTRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR")
        
    #print('Neptune', ''.join(neptune), ''.join(rc(neptune)), ''.join(rev(neptune)), ''.join(comp(neptune))) #checking neptune is working
    
    # numCols = 147 <=> docked || 168 undocked
    print(numRows, numCols, jsonfile, numRows == 16 and (numCols == 147) and jsonfile == "MD0.json")
    if numRows == 16 and numCols == 147 and jsonfile == "MD0.json":
        print('WARNING: Using specified tether seqeunces')
        rowSeq = addConnectors(rowSeq,[0,49,105],[apollo,venus,juno],[neptune,minerva,jupiter])            


    if numRows == 16 and numCols == 168 and jsonfile == "MD0u.json":
        print('WARNING: Using specified tether seqeunces')
        #From barrel
        rowSeq = addConnectors(rowSeq,[0,49,105],[apollo,venus,juno],[neptune,minerva,jupiter])
        #From pore
        rowSeq = fixConnectorUndocked(rowSeq, [0,140], [neptune,minerva,jupiter], [1,0,1,1,0,0], [2,2,3,2,2,1])


    print(numRows, numCols, jsonfile, numRows == 16 and (numCols == 189) and jsonfile == "MD1.json")
    if numRows == 16 and (numCols == 189) and jsonfile == "MD1.json":
        print('WARNING: Using specified tether seqeunces')
        rowSeq = addConnectors(rowSeq,[0,63,126],[apollo,venus,juno],[neptune,minerva,jupiter])
        rowSeq = fixPartialConnect(rowSeq,[0,63,126],[neptune,minerva,jupiter],[list("AGTCTTAGC"),list("TTGTGTAGG"),list("ATGGTAAGA")],[list("AT"),list("AT"),list("AT")])


    print(numRows, numCols, jsonfile, numRows == 16 and (numCols == 189) and jsonfile == "MD2.json")
    if numRows == 16 and (numCols == 189) and jsonfile == "MD2.json":
        print('WARNING: Using specified tether seqeunces')
        rowSeq = addConnectors(rowSeq,[0,63,126],[apollo,venus,juno],[brunnette,brunnette,brunnette])
        rowSeq = fixPartialConnect(rowSeq,[0,63,126],[brunnette,brunnette,brunnette],[list("TCGTTGTAT"),list("TCGTTGTAT"),list("TCGTTGTAT")],[list("CC"),list("CC"),list("CC")])

    print(numRows, numCols, jsonfile, numRows == 16 and numCols == 147 and jsonfile == "MD3.json")
    if numRows == 16 and (numCols == 147) and jsonfile == "MD3.json":
        print('WARNING: Using specified tether seqeunces')
        #from barrel
        rowSeq = addConnectors(rowSeq,[0,49,105],[apollo,venus,juno],[brunnette,brunnette,brunnette])
        
    if numRows == 16 and (numCols == 147) and jsonfile == "MD3u.json":
        print('WARNING: Using specified tether seqeunces')
        #from barrel
        rowSeq = addConnectors(rowSeq,[0,49,105],[apollo,venus,juno],[brunnette,brunnette,brunnette])
        #from pore
        rowSeq = fixConnectorUndocked(rowSeq, [0,140], [brunnette,brunnette,brunnette], [1,0,1,1,0,0], [2,2,3,2,2,1])
    
    return rowSeq
    
    


#add's connectors in full
#levelIdx: is the starting index of the connector linker short sequence strand
def addConnectors(rowSeq, levelIdx, barrelSeq, poreSeq):
    for i in range(len(levelIdx)):
        for rows in [10,12,14]: #even
            rowSeq[rows][levelIdx[i]+0 :levelIdx[i]+21] = rc(poreSeq[i])[0:21]
            rowSeq[rows][levelIdx[i]+21:levelIdx[i]+42] = rc(barrelSeq[i])[0:21]
        for rows in [11,13,15]: #odd
            rowSeq[rows][levelIdx[0]+0 :levelIdx[0]+21] = comp(barrelSeq[i])[0:21]
            rowSeq[rows][levelIdx[0]+21:levelIdx[0]+42] = comp(poreSeq[i])[0:21] 
    return rowSeq

            
#for partial connected sequences
def fixPartialConnect(rowSeq,levelIdx,poreSeq,frontSpacer,backSpacer):
    for i in range(len(levelIdx)):
        for rows in [10,12,14]: #even
            rowSeq[rows][levelIdx[i]:levelIdx[i]+len(frontSpacer[i])]      = frontSpacer[i]
            rowSeq[rows][levelIdx[i]+21-len(backSpacer[i]):levelIdx[i]+21] = backSpacer[i]
            rowSeq[rows][levelIdx[i]+45:levelIdx[i]+54] = rc(poreSeq[i][12:21])
            rowSeq[rows][levelIdx[i]+54:levelIdx[i]+56] = rc(poreSeq[i][0:2])                         
        for rows in [11,13,15]: #odd
            rowSeq[rows][levelIdx[i]+21:levelIdx[i]+len(backSpacer[i])]     = rev(backSpacer[i])
            rowSeq[rows][levelIdx[i]+42-len(frontSpacer[i]):levelIdx[i]+42] = rev(frontSpacer[i])
            rowSeq[rows][levelIdx[i]+45:levelIdx[i]+47] = comp(poreSeq[i])[0:2]
            rowSeq[rows][levelIdx[i]+47:levelIdx[i]+56] = comp(poreSeq[i])[12:21]            
    return rowSeq


#fixes handle sequence coming out of pore
def fixConnectorUndocked(rowSeq, startPoints, poreSeq, connClassLeft, connClassRght):
    connClasses   = [connClassLeft,connClassRght]
    poreSeq.append(list("R" * 21))    
    for cc in range(2):
        for rows in [0,2,4]:
            rowSeq[rows][startPoints[cc]:21+startPoints[cc]] = rc(poreSeq[connClasses[cc][rows]])[0:21]
        for rows in [1,3,5]:
            rowSeq[rows][startPoints[cc]:21+startPoints[cc]] = comp(poreSeq[connClasses[cc][rows]])[0:21] 
   return rowSeq

    
def comp(seq):
    seq1 = seq.copy()
    return [baseComp(base) for base in seq1]

 
def baseComp(base):
    if base == 'R':
        return 'R'
    elif base == 'A':
        return 'T'
    elif base == 'T':
        return 'A'
    elif base == 'G':
        return 'C'
    elif base == 'C':
        return 'G'
    else:
        print('FAILED')
        return ''                

#reverse complement
def rc(seq):
    return rev(comp(seq))
    
def rev(ls):
    cl = ls.copy()
    cl.reverse()
    return cl
    
genSeqFile(jsonfile, scaffile, scafperm)
