#!/bin/sh
pwd

# tcsh saveSims.csh ~/Documents/DNAnano/oxDNA 3 0 

set oxPath      = $argv[1]
set numTrajFile = $argv[2] 
set cinchnum    = $argv[3]

#source ~/usePython3.csh
source $oxPath/addpath.csh


foreach l ( $cinchnum ) 
    cd cinch$l
    pwd
   
    touch jointpos.dat
    set j = 0
    while ( $j <= $numTrajFile )
        touch outpos$j.dat
    	python2.7 $oxPath/MyScripts/savepos.py trajectoryMC$j.dat outpos$j.dat 1 0 0
    	cat outpos$j.dat >> jointpos.dat
        @ j++
    end
    
	rm outpos*.dat
    cp trajectoryMC1.dat sampleTrajMC.dat
    #bash $oxPath/MyScripts/makeVids.sh prova.top sampleTrajMC.dat
    #python2.7 $oxPath/UTILS/getBonds.py inputMC1 sampleTrajMC.dat numbonds.txt
    
    cd ..
end

