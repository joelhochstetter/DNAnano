#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/Connectors2/Undocked/

cd $simPath

#foreach l ( 0 1 2 3 )
foreach l ( 1 2 3 )
    cd MD$l
    tcsh $simPath/init_poreConn2.csh
    mkdir xv
    cp prova.top init.conf xv
    cd ..
end
