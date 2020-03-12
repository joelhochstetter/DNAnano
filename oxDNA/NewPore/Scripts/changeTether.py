'''
This script takes a json file of arbitrary tether length and output files of specified tether length.
The tether must already be connected out of the pore for this to work. This does not change cinches or handles. I plan to write additional code to do this. 

Inputs:
    jsonfile - the json file for the cadnano design
    n        - The tether 'half length' as number of nucleotides 
    t5p_p    - vstrand (row) index for coming out of pore in 3' to 5' direction. This will be connected to the square in the pore (on an even strand if connected to left of pore). This should be an even numbered strand.
    t5p_b    - vstrand (row) index for coming out of pore in 3' to 5' direction. This is connected to  't5p_p' and it's end nucleotide is fixed. This should be an odd numbered strand.     
    t3p_p    - vstrand (row) index for coming out of pore in 5' to 3' direction. This will be connected to the arrow in the pore (on an even strand if connected to left of pore). This should be an odd numbered strand.
    t3p_b    - vstrand (row) index for coming out of pore in 5' to 3' direction. This is connected to  't3p_p' and it's end nucleotide is fixed. This should be an even numbered strand.     


 
Usage: python changeTether.py jsonfile n t3p_p t3p_b t5p_p t5p_b 

For the default pore: 
- Pore helices 0-5
- Tether helices 6-9
usage is: python changeTether.py jsonfile n 6 7 9 8

Last edited: 7/2/20
'''
def changeTether():
    import sys
    import json
    import math
    print(sys.argv)
    jsonfile  = sys.argv[1]
    teth_len  = int(sys.argv[2])
    t5p_p     = int(sys.argv[3])
    t5p_b     = int(sys.argv[4])
    t3p_p     = int(sys.argv[5])
    t3p_b     = int(sys.argv[6])
     
    #partition tether length into halves (1) and (2)
    #lenT_p is length of strand which connects to pore
    #lenT_b is length of strand which connects to barrel
    lenT_p = math.ceil(teth_len/2)
    lenT_b = teth_len - lenT_p


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


    #Change 3' end of tether. i.e. connects to arrow from pore

    #Find the pore nucleotide that we are connected to
    bp_3p_p = 0 #base pair indx of 3p end of pore... to be found
    vs_3p_p = 0 #virtual strand of 3p end of pore... to be found
    for i in range(len(vstrands[t3p_p]["scaf"])):
        #Look at 3rd entry in each list. Corresponding to 5' vstrand link of a given nt
        if vstrands[t3p_p]["scaf"][i][0] != -1 and vstrands[t3p_p]["scaf"][i][0] != vstrands[t3p_p]["num"]:
            vs_3p_p = vstrands[t3p_p]["scaf"][i][0]
            bp_3p_p = vstrands[t3p_p]["scaf"][i][1]
            break

    #Update the relevant virtual strands staple
    #initialise scaffold
    #set all entries to -1
    for i in range(len(vstrands[t3p_p]["scaf"])):
        vstrands[t3p_p]["scaf"][i] = [-1, -1, -1, -1]
        vstrands[t3p_b]["scaf"][i] = [-1, -1, -1, -1]        

    #pore strand
    for i in range(lenT_p - 1):
        vstrands[t3p_p]["scaf"][i][0]     = t3p_p #3' to 5'
        vstrands[t3p_p]["scaf"][i][1]     = i + 1 #3' to 5'
        vstrands[t3p_p]["scaf"][i + 1][2] = t3p_p #5' to 3'
        vstrands[t3p_p]["scaf"][i + 1][3] = i     #5' to 3'
        
    #connect to pore
    #on tether strand
    vstrands[t3p_p]["scaf"][lenT_p - 1][0] = vs_3p_p
    vstrands[t3p_p]["scaf"][lenT_p - 1][1] = bp_3p_p
    #on pore strand
    vstrands[vs_3p_p]["scaf"][bp_3p_p][2] = t3p_p
    vstrands[vs_3p_p]["scaf"][bp_3p_p][3] = lenT_p - 1  
    

    #connect to barrel stand
    vstrands[t3p_p]["scaf"][0][2] = t3p_b
    vstrands[t3p_p]["scaf"][0][3] = 0
    vstrands[t3p_b]["scaf"][0][0] = t3p_p
    vstrands[t3p_b]["scaf"][0][1] = 0

    #barrel strand
    for i in range(lenT_b - 1):
        vstrands[t3p_b]["scaf"][i + 1][0] = t3p_b #3' to 5'
        vstrands[t3p_b]["scaf"][i + 1][1] = i     #3' to 5'
        vstrands[t3p_b]["scaf"][i][2]     = t3p_b #5' to 3'
        vstrands[t3p_b]["scaf"][i][3]     = i + 1 #5' to 3'



    #Repeat for 5' end of tether. i.e. connects to square from pore
    #Find the pore nucleotide that we are connected to
    bp_5p_p = 0 #base pair indx of 5p end of pore... to be found
    vs_5p_p = 0 #virtual strand of 5p end of pore... to be found
    for i in range(len(vstrands[t5p_p]["scaf"])):
        #Look at 3rd entry in each list. Corresponding to 5' vstrand link of a given nt
        if vstrands[t5p_p]["scaf"][i][2] != -1 and vstrands[t5p_p]["scaf"][i][2] != vstrands[t5p_p]["num"]:
            vs_5p_p = vstrands[t5p_p]["scaf"][i][2]
            bp_5p_p = vstrands[t5p_p]["scaf"][i][3]
            break


    #Update the relevant virtual strands staple
    #initialise scaffold
    #set all entries to -1
    for i in range(len(vstrands[t5p_p]["scaf"])):
        vstrands[t5p_p]["scaf"][i] = [-1, -1, -1, -1]
        vstrands[t5p_b]["scaf"][i] = [-1, -1, -1, -1]        

    #pore strand
    for i in range(lenT_p - 1):
        vstrands[t5p_p]["scaf"][i][2]     = t5p_p #5' to 3'
        vstrands[t5p_p]["scaf"][i][3]     = i + 1 #5' to 3'
        vstrands[t5p_p]["scaf"][i + 1][0] = t5p_p #3' to 5'
        vstrands[t5p_p]["scaf"][i + 1][1] = i     #3' to 5'

    #connect to pore
    #on tether strand
    vstrands[t5p_p]["scaf"][lenT_p- 1][2]  = vs_5p_p
    vstrands[t5p_p]["scaf"][lenT_p - 1][3] = bp_5p_p
    #on pore strand
    vstrands[vs_5p_p]["scaf"][bp_5p_p][0] = t5p_p
    vstrands[vs_5p_p]["scaf"][bp_5p_p][1] = lenT_p - 1          

    #connect to barrel stand
    vstrands[t5p_p]["scaf"][0][0] = t5p_b
    vstrands[t5p_p]["scaf"][0][1] = 0
    vstrands[t5p_b]["scaf"][0][2] = t5p_p
    vstrands[t5p_b]["scaf"][0][3] = 0

    #barrel strand
    for i in range(lenT_b - 1):
        vstrands[t5p_b]["scaf"][i + 1][2] = t5p_b #5' to 3'
        vstrands[t5p_b]["scaf"][i + 1][3] = i     #5' to 3'
        vstrands[t5p_b]["scaf"][i][0]     = t5p_b #3' to 5'
        vstrands[t5p_b]["scaf"][i][1]     = i + 1 #3' to 5'


    #update virtual strands in the original cadnano 
    cadnano['vstrands'] = vstrands


    #generate output filename
    fnameLs = jsonfile.split('.')
    writefile = fnameLs[0] + '_tether_n_' + str(teth_len) + '.json'
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
            
        
        
changeTether()
