#!/bin/sh
#e.g.: source saveSims.csh ~/Documents/DNAnano/oxDNA/ /import/silo2/joelh/misc/DNA/Connectors2/Undocked/ 0
pwd

set oxPath  = $argv[1]
set simPath = $argv[2]  #$oxPath/NewPore/VaryTethLen3/
set numTrajFile = $argv[3] 
#set MDidx  = $argv[4]

#source ~/usePython3.csh
source $oxPath/addpath.csh

cd $simPath

#foreach l ( $MDidx ) 
foreach l ( 0 1 2 3 )
    cd MD$l
    pwd
   
    #touch jointpos.dat
    set j = 0
    while ( $j <= $numTrajFile )
        #touch outpos$j.dat
    	#python2.7 $oxPath/MyScripts/savepos.py trajectoryMC$j.dat outpos$j.dat 1 0 0
    	#cat outpos$j.dat >> jointpos.dat
        #python2.7 ~/Documents/DNAnano/oxDNA/UTILS/getBonds.py inputMC$j trajectoryMC$j.dat numbonds$j.txt
        @ j++
    end
    
	#rm outpos*.dat
    #cp trajectoryMC0.dat sampleTrajMC.dat
    python2.7 ~/Documents/DNAnano/oxDNA/UTILS/getBonds.py inputMC0 sampleTrajMC.dat numbonds.txt
    #bash $oxPath/MyScripts/makeVids.sh prova.top sampleTrajMC.dat
    
    cd ..
end

cd ..
