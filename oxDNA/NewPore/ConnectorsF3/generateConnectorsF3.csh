#!/bin/sh
pwd


set oxPath  = ~/Documents/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/ConnectorsF3/
cd $simPath


#set-up sequences
foreach l ( 4 7 11 )
    mkdir "poreConnectors"$l
    cp "poreConnectors"$l".json" "poreConnectors"$l
    echo "poreConnectors"$l".json"
    cd "poreConnectors"$l
    
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    
    #generate sequences
    @ P = (242 - 120)    
    python3 $oxPath/MyScripts/generateSeqFile.py "poreConnectors"$l".json" $simPath/p7249.txt $P
    
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py "poreConnectors"$l".json" he 100
    
    tcsh $oxPath/MyScripts/new_relax.sh
    
    cd ..

end
