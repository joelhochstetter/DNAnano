'''
This takes an oxDNA sequence file and sets row to all same nucleotide

Inputs:
    seqFile: 'casa.sqs' the sequence file to use in oxDNA
    jsonFile: used to check strands are indexed natually to avoid errors
    base: Either A, G, C, T, or R (random)
    row: row of the cadnano folder

Last edited: 3/6/20
'''


import sys
import json


seqFile  = sys.argv[1]
jsonFile = sys.argv[2]
base     = sys.argv[3]
row      = sys.argv[4]



# check that base is either A,G,C,T,R
if base not in ['A', 'G', 'C', 'T', 'R']:
    print('ERROR invalid base provided\n Did not run')
    return


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


updated = False

#Load sequence file



if updated == False:
    print('ERROR: row not found in file')

