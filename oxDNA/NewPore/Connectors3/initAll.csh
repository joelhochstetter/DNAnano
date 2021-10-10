#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/Connectors3/

cd $simPath

foreach l ( 2 )
    cd MD$l
    tcsh $simPath/init_poreConn3.csh
    mkdir xv
    cp prova.top init.conf xv
    cd ..
end
