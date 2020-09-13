#!/bin/sh
pwd


set oxPath = ~/Documents/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/Connectors2/Undocked/
cd $simPath

cp poreConnectorsDesign2Undocked.json MD0u.json
cp poreConnectorsDesign2Undocked.json MD1u.json
cp poreConnectorsDesign2Undocked.json MD2u.json
cp poreConnectorsDesign2Undocked.json MD3u.json


#set-up sequences
foreach l ( 0 1 2 3 )
    mkdir MD$l
    cp MD$l'u.json' MD$l
    cd MD$l
    
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    
    #generate sequences
    @ P = (242 - 120)    
    python3 $oxPath/MyScripts/generateSeqFile.py MD$l'u.json' $simPath/p7249.txt $P
    
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py MD$l'u.json' he 100
    
    cd ..

end
