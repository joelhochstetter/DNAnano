'''

This script takes a json file of arbitrary tether length and output files and adds cinches
to the tether

Inputs:
    jsonfile - the json file for the cadnano design
    n        - The tether 'half length' as number of nucleotides 
    t5p_p    - vstrand (row) index for coming out of pore in 3' to 5' direction. This will be connected to the square in the pore (on an even strand if connected to left of pore). This should be an even numbered strand.
    t5p_b    - vstrand (row) index for coming out of pore in 3' to 5' direction. This is connected to  't5p_p' and it's end nucleotide is fixed. This should be an odd numbered strand.     
    t3p_p    - vstrand (row) index for coming out of pore in 5' to 3' direction. This will be connected to the arrow in the pore (on an even strand if connected to left of pore). This should be an odd numbered strand.
    t3p_b    - vstrand (row) index for coming out of pore in 5' to 3' direction. This is connected to  't3p_p' and it's end nucleotide is fixed. This should be an even numbered strand.
   clen   - number of nucleotides in each cinch     
   spacer - number of nucleotides between start of tether and first tether in the cinches
   

Assumes tether is an even number of nucleotides
 
Usage: python addCinches.py jsonfile n t3p_p t3p_b t5p_p t5p_b clen spacer


For the default pore: 
- Pore helices 0-5
- Tether helices 6-9
usage is: python addCinches.py jsonfile 120 6 7 9 8 84 4

Last edited: 26/6/20

'''


def addCinches():
    import sys
    import json
    import math
    print(sys.argv)
    jsonfile  = sys.argv[1]
    teth_len  = int(sys.argv[2])
    t5p_p     = int(sys.argv[3]) # 6, even
    t5p_b     = int(sys.argv[4]) # 7, odd
    t3p_p     = int(sys.argv[5]) # 9, odd
    t3p_b     = int(sys.argv[6]) # 8, even
    clen      = int(sys.argv[7])
    spacer    = int(sys.argv[8])    
    
    #import cadnanofile
    with open(jsonfile) as json_file:
        cadnano = json.load(json_file)    


    #get virtual strands as list to edit. vstrands[0] gives a particular row
    vstrands = cadnano['vstrands']

    #Check to see if vstrands is indexed naturally. i.e. vstrand number = index number
    #If is not indexed naturally then an error is thrown.
    #I may later write code to fix this
    natIndex = True
    for i in range(len(vstrands)):
        if i != vstrands[i]["num"]:
            #throw an error as this code isn't written to handle this case
            print('ERROR: unnatural vstrand index numbering used\n')
            print('vstrand with num = ' + str(vstrands[i]["num"]) + 'is indexed at ' + str(i))
            natIndex = False
            return

    halfTeth = int(teth_len/2)
    halfclen = int(clen/2)
    minBP = halfTeth - halfclen - spacer
    maxBP = halfTeth - 1 - spacer
    
    #add on vstrand links
    for i in range(halfclen - 1):
        #update even nt
        vstrands[t3p_b]["stap"][minBP + i][0]     = t3p_b
        vstrands[t3p_b]["stap"][minBP + i][1]     = minBP + 1 + i   
        vstrands[t3p_b]["stap"][minBP + 1 + i][2] = t3p_b
        vstrands[t3p_b]["stap"][minBP + 1 + i][3] = minBP + i

        vstrands[t3p_p]["stap"][minBP + 1 + i][0] = t3p_p
        vstrands[t3p_p]["stap"][minBP + 1 + i][1] = minBP + i     
        vstrands[t3p_p]["stap"][minBP + i][2]     = t3p_p
        vstrands[t3p_p]["stap"][minBP + i][3]     = minBP + 1 + i  
        
        
        vstrands[t5p_p]["stap"][minBP + i][0]     = t5p_p
        vstrands[t5p_p]["stap"][minBP + i][1]     = minBP + 1 + i     
        vstrands[t5p_p]["stap"][minBP + 1 + i][2] = t5p_p
        vstrands[t5p_p]["stap"][minBP + 1 + i][3] = minBP + i        
   
        vstrands[t3p_p]["stap"][minBP + 1 + i][0] = t3p_p
        vstrands[t3p_p]["stap"][minBP + 1 + i][1] = minBP + i     
        vstrands[t3p_p]["stap"][minBP + i][2]     = t3p_p
        vstrands[t3p_p]["stap"][minBP + i][3]     = minBP + 1 + i  
        
        vstrands[t5p_b]["stap"][minBP + 1 + i][0] = t5p_b
        vstrands[t5p_b]["stap"][minBP + 1 + i][1] = minBP + i     
        vstrands[t5p_b]["stap"][minBP + i][2]     = t5p_b
        vstrands[t5p_b]["stap"][minBP + i][3]     = minBP + 1 + i
        
    
    #link vstrands together
    
    vstrands[t3p_b]["stap"][maxBP][0]     = t3p_p
    vstrands[t3p_b]["stap"][maxBP][1]     = maxBP     
    vstrands[t3p_p]["stap"][maxBP][2]     = t3p_b
    vstrands[t3p_p]["stap"][maxBP][3]     = maxBP       
    
    vstrands[t5p_p]["stap"][maxBP][0]     = t5p_b
    vstrands[t5p_p]["stap"][maxBP][1]     = maxBP     
    vstrands[t5p_b]["stap"][maxBP][2]     = t5p_p
    vstrands[t5p_b]["stap"][maxBP][3]     = maxBP     
             

    #update virtual strands in the original cadnano 
    cadnano['vstrands'] = vstrands

    #generate output filename
    fnameLs = jsonfile.split('.')
    writefile = fnameLs[0] + '_tether_n' + str(teth_len) + '_c' + str(clen) + '_s' + str(spacer) + '.json'
    cadnano['name'] = writefile

       
    #write output to json file
    with open(writefile, 'w') as outfile:
        json.dump(cadnano, outfile)
        
    #the above will work for cadnano
    #strip all spaces from textfile to make compatible with oxDNA
    # first get all lines from file
    with open(writefile, 'r') as f:
        lines = f.readlines()

    # remove spaces
    lines = [line.replace(' ', '') for line in lines]

    # finally, write lines in the file
    with open(writefile, 'w') as f:
        f.writelines(lines)    
    
 
addCinches()
