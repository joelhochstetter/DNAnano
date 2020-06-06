#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA
set simPath = $oxPath/NewPore/VaryTethLen3/

cd $simPath


#set-up sequences
foreach l ( 15 30 45 60 75 90 105 120 )
    cd len$l
    cd ogSeq
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    tcsh $simPath/init_poreV3.csh
        
    cd ..
    cd shiftSeq700
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    tcsh $simPath/init_poreV3.csh

    cd ..
    cd tethAllT
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .    
    tcsh $simPath/init_poreV3.csh

    cd ../..
end
    
