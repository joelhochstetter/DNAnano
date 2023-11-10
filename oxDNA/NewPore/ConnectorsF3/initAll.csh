#!/bin/sh
pwd

set oxPath = $argv[1] #~/Documents/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/ConnectorsF3/
set seed  = $argv[2]

cd $simPath

foreach s ( $seed )  #( 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 ) 
    foreach l ( 4 7 11 ) #( $MDval )
        cd poreConnectors$l
        tcsh $simPath/init_poreConnF3.csh $oxPath $l $seed
        mkdir xv
        cp prova.top init$seed.conf xv
        cd ..
    end
end

