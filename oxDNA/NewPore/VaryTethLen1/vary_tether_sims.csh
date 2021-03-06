#!/bin/sh
pwd


set oxPath = /suphys/joelh/Documents/DNAnano/oxDNA

cd $oxPath/NewPore/VaryTethLen1/

#run sims
foreach l (40 50 60) 
    mkdir len$l
    python ../Scripts/changeTether.py pore.json $l 6 7 9 8
    mv pore*$l*.json len$l
    cd len$l
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    echo 'Initialising pore'
    source $oxPath/NewPore/Scripts/init_pore.csh
    echo 'Running sims'
    oxDNA ../inputMD
    mv log.dat log_MD.dat
    python $oxPath/MyScripts/savepos.py trajectoryMD.dat outMD.dat 1 1 1
    cd ..
end
    
