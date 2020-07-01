#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA
set simPath = $oxPath/NewPore/VaryTethLen4AssymetricBarrel/
set lval = $argv[1]


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
    case 9: 
	    set x = 135
	    breaksw
    case 10: 
	    set x = 150
	    breaksw	
endsw

#set-up sequences
foreach l ( $x )
    cd len$l
    cd ogSeq
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    tcsh $simPath/init_poreV4.csh
        
    cd ..
    cd shiftSeq700
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    tcsh $simPath/init_poreV4.csh

    cd ..
    cd tethAllT
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .    
    tcsh $simPath/init_poreV4.csh

    cd ../..
end
    
