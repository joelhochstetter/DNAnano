#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA
set simPath = $oxPath/NewPore/VaryTethLen3/

cd $simPath


#set-up sequences
foreach l ( 10 25 40 55 70 85 100 115 )
    cd len$l
    cd ogSeq    
    tcsh $simPath/init_poreV3.csh
        
    cd ..
    cd shiftSeq700
    tcsh $simPath/init_poreV3.csh

    cd ..
    cd tethAllT
    tcsh $simPath/init_poreV3.csh

    cd ../..
end
    
