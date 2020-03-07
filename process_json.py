'''
Inputs a cadnano json file
Turns it into a dictionary


'''

import json

filej = 'lone_190604_TC_pore_cinch1.json'
   
with open(filej) as json_file:
    cadnano = json.load(json_file)    

    
vstrands = cadnano['vstrands'];

vstrads[0] #gives a particular row
    
    
with open(writefile, 'w') as outfile:
    json.dump(data, outfile)
    
