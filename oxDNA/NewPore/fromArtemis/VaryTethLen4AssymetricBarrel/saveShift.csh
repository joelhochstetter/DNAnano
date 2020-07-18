#!/bin/sh
pwd

set oxPath = $argv[1]

set lval    = $argv[2]

set simPath = $oxPath/NewPore/VaryTethLen3/

cd $simPath

switch ($lval) 
    case 1: 
	set x = 15
	breaksw
    case 2: 
	set x = 30
	breaksw
    case 3: 
	set x = 45
	breaksw
    case 4: 
	set x = 60
	breaksw
    case 5: 
	set x = 75
	breaksw
    case 6: 
	set x = 90
	breaksw
    case 7: 
	set x = 105
	breaksw	
    case 8: 
	set x = 120
	breaksw		
endsw



foreach l ( $x ) 
    cd len$l
    cd shiftSeq700
    pwd


	python2.7 $oxPath/MyScripts/savepos.py trajectoryMC.dat   outpos.dat 1 0 0
	python2.7 $oxPath/MyScripts/savepos.py trajectoryMC1.dat outpos1.dat 1 0 0
	python2.7 $oxPath/MyScripts/savepos.py trajectoryMC2.dat outpos2.dat 1 0 0
	python2.7 $oxPath/MyScripts/savepos.py trajectoryMC3.dat outpos3.dat 1 0 0
	python2.7 $oxPath/MyScripts/savepos.py trajectoryMC4.dat outpos4.dat 1 0 0
	cp outpos.dat jointpos.dat
	cat outpos1.dat >> jointpos.dat
	cat outpos2.dat >> jointpos.dat
	cat outpos3.dat >> jointpos.dat
	cat outpos4.dat >> jointpos.dat
	rm outpos1.dat outpos2.dat outpos3.dat outpos4.dat


    cd ../..
end

