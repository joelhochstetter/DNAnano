#!/bin/sh
pwd

set oxPath  = $argv[1]
set simPath = $argv[2]  #$oxPath/NewPore/VaryTethLen3/
set simType = $argv[3]
set numTrajFile = $argv[4] 

source ~/usePython3.csh
source $oxPath/addpath.csh

cd $simPath


foreach l ( 15 30 45 60 75 90 105 120 135 150 ) 
    cd len$l
    cd $simType
    pwd
    
    touch jointpos.dat
    set j = 0
    while ( $j <= $numTrajFile )
        touch outpos$j.dat
    	python2.7 $oxPath/MyScripts/savepos.py trajectoryMC$j.dat outpos$j.dat 1 0 0
    	cat outpos$j.dat >> jointpos.dat
        @ j++
    end
    
	#rm outpos*.dat
    cp trajectoryMC0.dat sampleTrajMC.dat
    bash $oxPath/MyScripts/makeVids.sh prova.top sampleTrajMC.dat
    #python2.7 ~/Documents/DNAnano/oxDNA/UTILS/getBonds.py inputMC0 sampleTrajMC.dat numbonds.txt
    
    cd ../..
end

