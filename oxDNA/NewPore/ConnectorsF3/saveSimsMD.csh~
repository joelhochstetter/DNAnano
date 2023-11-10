#!/bin/sh
#e.g.: source saveSims.csh ~/Documents/DNAnano/oxDNA/ /import/silo2/joelh/misc/DNA/Connectors2/Undocked/ 0
pwd

set oxPath  = $argv[1]
set simPath = $argv[2]  
set numTrajFile = $argv[3] 


source $oxPath/addpath.csh

cd $simPath

foreach l ( 4 7 11 ) 


    cd poreConnectors$l
    pwd
   
    touch jointpos.dat
    set j = 0
    while ( $j < $numTrajFile )
        touch outpos$j.dat
    	python2.7 $oxPath/MyScripts/savepos.py trajectoryMD$j.dat outposMD$j.dat 1 0 0
    	cat outpos$j.dat >> jointpos.dat
        python2.7 $oxPath/UTILS/getBonds.py inputMD$j trajectoryMD$j.dat numbondsMD$j.txt
        @ j++
    end
    
    mkdir xv1
    cp prova.top trajectoryMD0.dat xv1
    
	#rm outpos*.dat
    cp trajectoryMD0.dat sampleTrajMD.dat
    #bash $oxPath/MyScripts/makeVids.sh prova.top sampleTrajMC.dat
    
    cd ..
end

cd ..
