#!/bin/sh
pwd

set oxPath = /project/RDS-FSC-DNAlienDynamics-RW/DNAnano/oxDNA
set simPath = $oxPath/NewPore/VaryTethLen3

cd $simPath


#set-up sequences
foreach l ( 15 )
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
    
