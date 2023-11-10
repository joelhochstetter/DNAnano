#!/bin/sh
#e.g.: source saveSims.csh ~/Documents/DNAnano/oxDNA/ /import/silo2/joelh/misc/DNA/Connectors2/Undocked/ 0
pwd

set oxPath  = $argv[1]
set simPath = $argv[2]  #$oxPath/NewPore/VaryTethLen3/
set numTrajFile = $argv[3] 
set cidx  = $argv[4]

#source ~/usePython3.csh
source $oxPath/addpath.csh

cd $simPath

#foreach l ( $cidx ) 
foreach l ( 0 1 2 3 4 5 6 7 )
    cd cinch$l
    pwd
   
    touch jointpos.dat
    set j = 0
    while ( $j < $numTrajFile )
        touch outposMD$j.dat
    	python2.7 $oxPath/MyScripts/savepos.py trajectoryMD$j.dat outposMD$j.dat 1 0 0
    	cat outposMD$j.dat >> jointposMD.dat
        python2.7 $oxPath/UTILS/getBonds.py inputMD$j trajectoryMD$j.dat numbondsMD$j.txt
        @ j++
    end
    
    mkdir xv1
    cp prova.top trajectoryMD0.dat xv1
    
	#rm outpos*.dat
    cp trajectoryMD0.dat sampleTrajMD.dat
    #bash $oxPath/MyScripts/makeVids.sh prova.top sampleTrajMD.dat
    
    cd ..
end

cd ..
