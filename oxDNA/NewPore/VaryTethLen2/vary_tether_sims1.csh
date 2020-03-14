#!/bin/sh
pwd


set oxPath = ~/Documents/DNAnano/oxDNA/

set lval    = $argv[1]

cd $oxPath/NewPore/VaryTethLen2/


switch ($lval) 
    case 1: 
	set x = 20
	breaksw
    case 2: 
	set x = 30
	breaksw
    case 3: 
	set x = 40
	breaksw
    case 4: 
	set x = 50
	breaksw
    case 5: 
	set x = 60
	breaksw
endsw


#run sims
foreach l ( $x ) 
    mkdir len$l
    #python ../Scripts/changeTether.py pore.json $l 6 7 9 8
    #mv pore*$l*.json len$l
    cd len$l
    #json to oxDNA
    #python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    echo 'Initialising pore'
    source $oxPath/NewPore/Scripts/init_pore.csh
    echo 'Running sims'
    #oxDNA ../inputMD
    mv log.dat log_MD.dat
    python $oxPath/MyScripts/savepos.py trajectoryMD.dat outMD.dat 1 1 1
    cd ..
end
    
