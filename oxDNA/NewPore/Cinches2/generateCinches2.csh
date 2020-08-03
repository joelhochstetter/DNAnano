#!/bin/sh
pwd


set oxPath = ~/Documents/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/Cinches2/
cd $simPath


#set-up sequences
#foreach l ( 0 1 2 3 4 5 6 )
foreach l ( 3 )
    mkdir cinch$l
    cp cinch$l*.json cinch$l
    cd cinch$l
    
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    
    #generate sequences
    @ P = (242 - $l)    
    python3 $oxPath/MyScripts/generateSeqFile.py cinch$l*.json $simPath/p7249.txt $P
        
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    
    cd ..

end
    
