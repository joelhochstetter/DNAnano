#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA
set simPath = $oxPath/NewPore/VaryTethLen3/

cd $simPath


#set-up sequences
foreach l ( 15 30 45 60 75 90 105 120 )
    cd len$l
    cd ogSeq
    cp $simPath/inputMC .
    pwd
    $oxPath/oxDNA inputMC
    
    
    cd ..
    cd shiftSeq700
    cp $simPath/inputMC .
    pwd    
    $oxPath/oxDNA inputMC

    cd ..
    cd tethAllT
    cp $simPath/inputMC .
    pwd
    $oxPath/oxDNA inputMC

    cd ../..
end
    
