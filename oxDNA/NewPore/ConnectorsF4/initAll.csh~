#!/bin/sh
pwd

set oxPath = /project/DNAlienDynamics/DNAnano/oxDNA/
set simPath = $oxPath/NewPore/ConnectorsF4/

#set MDval = $argv[2]
set seed  = $argv[1]

cd $simPath



foreach s ( $seed )  #( 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 ) 
    foreach l ( 1 ) #( 0 1 2 3 ) #( $MDval )
        cd MD$l
        tcsh $simPath/init_poreConn3.csh 6 $s
        mkdir xv
        cp prova.top init$seed.conf xv
        cd ..
    end
end
