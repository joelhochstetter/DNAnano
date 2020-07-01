'''

This script takes a json file of arbitrary tether length and output files and adds cinches
to the tether

Inputs:
    jsonfile - the json file for the cadnano design
    n        - The tether 'half length' as number of nucleotides 
    numConn  - number of connectors. Must be 1 or 3
   spacer - number of nucleotides between start of tether and first tether in the cinches
   

Assumes tether is an even number of nucleotides
 
Usage: python addConnectors.py jsonfile n numConn spacer


For the default pore: 
- Pore helices 0-5
- Tether helices 6-9
usage is: python addConnectors.py jsonfile 120 3 4

Last edited: 26/6/20

'''



def addConnectors():
    import sys
    import json
    import math
    print(sys.argv)
    jsonfile  = sys.argv[1]
    teth_len  = int(sys.argv[2])
    numConn   = int(sys.argv[3])
    spacer    = int(sys.argv[4])    
    
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

    blue  = [[4,49],[2,36],[1,48]]
    red   = [[5,76],[2,77],[3,62],[0,63]]
    black = [[4,98],[1,97],[0,106],[3,104]]
    
    addConnColour(vstrands, black)    

    if numConn == 3:
        addConnColour(vstrands, blue)
        addConnColour(vstrands, red)

    #update virtual strands in the original cadnano 
    cadnano['vstrands'] = vstrands

    #generate output filename
    fnameLs = jsonfile.split('.')
    writefile = fnameLs[0] + '_tether_n_' + str(teth_len) + '_conn_' + str(numConn) + '_s_' + str(spacer) + '.json'
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
    
    
def addVirtHelix(vstrands):
    n = len(vstrands)
    vstrands.append(vstrands[n - 1].copy())
    vstrands[n]["num"] = n + 1
    
    #Update the relevant virtual strands staple
    #initialise scaffold
    #set all entries to -1
    for i in range(len(vstrands[n]["scaf"])):
        vstrands[n]["scaf"][i] = [-1, -1, -1, -1]
        vstrands[n]["stap"][i] = [-1, -1, -1, -1]     
    
    
def addConnColour(vstrands, colour): #adds a set of connectors (the set is called a colour)
    for i in range(len(colour)):
        addVirtHelix(vstrands)
        
    


addConnectors()
