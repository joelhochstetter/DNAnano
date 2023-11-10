#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA
set simPath = $oxPath/NewPore/CinchesUD/

cd $simPath


#foreach l ( 0 1 2 3 4 5 6 )
foreach l ( 6 7 )
    cd cinch$l
    tcsh $simPath/init_poreFree.csh
    mkdir xv 
    cp prova.top init.conf xv
    cd ..

end
