#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA
set simPath = $oxPath/NewPore/FreeVariants/

cd $simPath

foreach l ( 3 )
    cd pore$l
    tcsh $simPath/init_poreFree.csh
    mkdir xv 
    cp prova.top init.conf xv
    cd ..

end
