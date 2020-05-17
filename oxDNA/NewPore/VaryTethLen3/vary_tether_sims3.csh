#!/bin/sh
pwd


set oxPath = ~/Documents/DNAnano/oxDNA/

set lval    = $argv[1]

cd $oxPath/NewPore/VaryTethLen3/


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
    python $oxPath/MyScripts/savepos.py trajectoryMD.dat outMD$l.txt 1 1 1
    bash $oxPath/MyScripts/makeVids.sh
    '''
    python ../../../MyScripts/savepos.py trajectoryMD.dat outMDp.txt 1 0 0 
    python ../../../MyScripts/savepos.py trajectoryMD.dat outMDv.txt 0 1 0 
    python ../../../MyScripts/savepos.py trajectoryMD.dat outMDr.txt 0 0 1 
    '''        
    cd ..
end
    
