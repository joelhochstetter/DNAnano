#!/bin/sh
pwd


set oxPath = ~/Documents/DNAnano/oxDNA/  #~/Documents/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/FreeVariants/
cd $simPath


#set-up sequences
foreach l ( 1 2 3 )
    mkdir pore$l
    cp pore$l*.json pore$l
    cd pore$l
    
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    
    #generate sequences
    @ P = (242 - 120)    
    python3 $oxPath/MyScripts/generateSeqFile.py pore$l*.json $simPath/p7249.txt $P
        
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    
    cd ..

end
    
