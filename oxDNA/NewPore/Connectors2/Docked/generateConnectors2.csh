#!/bin/sh
pwd


set oxPath = ~/Documents/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/Connectors2/Docked/
cd $simPath


cp poreConnectorsDesign2Docked.json MD0.json
cp poreConnectorsDesign2Docked.json MD3.json
cp poreConnectorsDesign2DockedPartialConnect.json MD1.json
cp poreConnectorsDesign2DockedPartialConnect.json MD2.json

#set-up sequences
#foreach l ( 0 1 2 3 )
foreach l ( 0 )
    mkdir MD$l
    cp MD$l.json MD$l
    cd MD$l
    
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    
    #generate sequences
    @ P = (242 - 120)    
    python3 $oxPath/MyScripts/generateSeqFile.py MD$l.json $simPath/p7249.txt $P
    
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    
    cd ..

end
    
