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
        
    #reverse()
    brunnette     = list("TTCCTCTACCACCTACATCAC")
    apollo        = list("CCTACTGACTTTATCCACCGA")
    minerva       = list("CCTAATTACGATGCTACTCCC")
    jupiter       = list("GCTCTGCAATCAACTTATCCC")      
    juno          = list("CGTCCCCTTTTAACCCTAGAA")          
    neptune       = list("CGACTCTCATTCTCTAACAGC") 
    venus         = list("CGTACAACCTTGACCTTACCT")                               
    
    # numCols = 147 <=> docked || 168 undocked
    print(numRows, numCols, jsonfile, numRows == 15 and (numCols == 147 or numCols == 168) and jsonfile == "MD0.json")
    if numRows == 15 and (numCols == 147 or numCols == 168) and jsonfile == "MD0.json":
        print('WARNING: Using specified tether seqeunces')
        for rows in [10,12,14]: #even
            rows[0:21]    = rc(neptune)[0:21]
            rows[21:42]   = rc(apollo)[0:21]
            rows[49:70]   = rc(minerva)[0:21]
            rows[70:91]   = rc(venus)[0:21]
            rows[105:126] = rc(jupiter)[0:21]
            rows[126:147] = rc(juno)[0:21]                        
        for rows in [11,13,15]: #odd
            rows[0:21]    = comp(apollo)[0:21]
            rows[21:42]   = comp(neptune)[0:21] 
            rows[49:70]   = comp(venus)[0:21]
            rows[70:91]   = comp(minerva)[0:21]
            rows[105:126] = comp(juno)[0:21]
            rows[126:147] = comp(jupiter)[0:21]                
        
    print(numRows, numCols, jsonfile, numRows == 15 and (numCols == 147 or numCols == 168) and jsonfile == "MD1.json")
    if numRows == 15 and (numCols == 147 or numCols == 168) and jsonfile == "MD1.json":
        print('WARNING: Using specified tether seqeunces')
        for rows in [10,12,14]: #even
            rows[0:9]     = list("AGTCTTAGC")
            rows[9:19]    = rc(neptune)[2:12]
            rows[19:21]   = list("AT")
            rows[21:42]   = rc(apollo)[0:21]
            rows[45:54]   = rc(neptune)[12:21]
            rows[54:56]   = rc(neptune)[0:2]                        

            rows[63:72]   = list("TTGTGTAGG")
            rows[72:84]   = rc(minerva)[2:12]
            rows[84:86]   = list("AT")
            rows[86:107]  = rc(venus)[0:21]
            rows[108:110]   = rc(minerva)[0:2]   
            rows[110:119]   = rc(minerva)[12:21]            
            
            rows[126:135] = list("ATGGTAAGA")
            rows[135:145] = rc(jupiter)[2:12]
            rows[145:147] = list("AT")
            rows[147:168] = rc(juno)[0:21]
            rows[171:173] = rc(jupiter)[0:2]            
            rows[173:182] = rc(jupiter)[12:21]

                       
        for rows in [11,13,15]: #odd
            rows[0:21]    = comp(apollo)[0:21]
            rows[21:23]   = reverse(list("AT"))
            rows[23:33]   = comp(neptune)[2:12]
            rows[33:42]   = reverse(list("AGTCTTAGC")) 
            rows[45:47]   = comp(neptune)[0:2]
            rows[47:56]   = comp(neptune)[12:21]
            
            rows[63:84]   = comp(venus)[0:21]
            rows[84:86]   = reverse(list("AT"))
            rows[86:96]   = comp(minerva)[2:12]
            rows[96:105]  = reverse(list("TTGTGTAGG")) 
            rows[108:110] = comp(minerva)[0:2]
            rows[110:119] = comp(minerva)[12:21]  
                      
            rows[126:147] = comp(juno)[0:21]
            rows[147:149] = reverse(list("AT"))
            rows[149:159] = comp(jupiter)[2:12]
            rows[159:168] = reverse(list("ATGGTAAGA")) 
            rows[171:173] = comp(jupiter)[0:2]
            rows[173:182] = comp(jupiter)[12:21]  


    print(numRows, numCols, jsonfile, numRows == 15 and (numCols == 147 or numCols == 168) and jsonfile == "MD2.json")
    if numRows == 15 and (numCols == 147 or numCols == 168) and jsonfile == "MD2.json":
        print('WARNING: Using specified tether seqeunces')
        for rows in [10,12,14]: #even
            rows[0:9]     = list("TCGTTGTAT")
            rows[9:19]    = rc(brunnette)[2:12]
            rows[19:21]   = list("CC")
            rows[21:42]   = rc(apollo)[0:21]
            rows[45:54]   = rc(brunnette)[12:21]
            rows[54:56]   = rc(brunnette)[0:2]                        

            rows[63:72]   = list("TCGTTGTAT")
            rows[72:84]   = rc(brunnette)[2:12]
            rows[84:86]   = list("CC")
            rows[86:107]  = rc(venus)[0:21]
            rows[108:110]   = rc(brunnette)[0:2]   
            rows[110:119]   = rc(brunnette)[12:21]            
            
            rows[126:135] = list("TCGTTGTAT")
            rows[135:145] = rc(brunnette)[2:12]
            rows[145:147] = list("CC")
            rows[147:168] = rc(juno)[0:21]
            rows[171:173] = rc(brunnette)[0:2]            
            rows[173:182] = rc(brunnette)[12:21]

                       
        for rows in [11,13,15]: #odd
            rows[0:21]    = comp(apollo)[0:21]
            rows[21:23]   = reverse(list("CC"))
            rows[23:33]   = comp(brunnette)[2:12]
            rows[33:42]   = reverse(list("TCGTTGTAT")) 
            rows[45:47]   = comp(brunnette)[0:2]
            rows[47:56]   = comp(brunnette)[12:21]
            
            rows[63:84]   = comp(venus)[0:21]
            rows[84:86]   = reverse(list("CC"))
            rows[86:96]   = comp(brunnette)[2:12]
            rows[96:105]  = reverse(list("TCGTTGTAT")) 
            rows[108:110] = comp(brunnette)[0:2]
            rows[110:119] = comp(brunnette)[12:21]  
                      
            rows[126:147] = comp(juno)[0:21]
            rows[147:149] = reverse(list("CC"))
            rows[149:159] = comp(brunnette)[2:12]
            rows[159:168] = reverse(list("TCGTTGTAT")) 
            rows[171:173] = comp(brunnette)[0:2]
            rows[173:182] = comp(brunnette)[12:21]          


    print(numRows, numCols, jsonfile, numRows == 15 and (numCols == 147 or numCols == 168) and jsonfile == "MD3.json")
    if numRows == 15 and (numCols == 147 or numCols == 168) and jsonfile == "MD3.json":
        print('WARNING: Using specified tether seqeunces')
        for rows in [10,12,14]: #even
            rows[0:21]    = rc(brunnette)[0:21]
            rows[21:42]   = rc(apollo)[0:21]
            rows[49:70]   = rc(brunnette)[0:21]
            rows[70:91]   = rc(venus)[0:21]
            rows[105:126] = rc(brunnette)[0:21]
            rows[126:147] = rc(juno)[0:21]                        
        for rows in [11,13,15]: #odd
            rows[0:21]    = comp(apollo)[0:21]
            rows[21:42]   = comp(brunnette)[0:21] 
            rows[49:70]   = comp(venus)[0:21]
            rows[70:91]   = comp(brunnette)[0:21]
            rows[105:126] = comp(juno)[0:21]
            rows[126:147] = comp(brunnette)[0:21]   
                    
    
    return rowSeq
    
def comp(seq):
    return [comp(base) for base in seq]

 
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
        return 'A'
    else:
        print('FAILED')
        return ''                

#reverse complement
def rc(seq):
    return reverse(comp(seq))
    
genSeqFile(jsonfile, scaffile, scafperm)
