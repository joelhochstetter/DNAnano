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
    jsonfile  = 'poreWith3Connectors.json'
    teth_len = 120
    numConn  = 3
    spacer   = 3

    #import cadnanofile
    with open(jsonfile, encoding='utf-8-sig') as json_file:
        cadnano = json.load(json_file)    

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
    
        
    


addConnectors()
