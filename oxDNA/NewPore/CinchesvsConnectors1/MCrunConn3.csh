#!/bin/sh
pwd


set oxPath = $argv[1]

set lval    = $argv[2]

set seed = $argv[3]

set simPath = $oxPath/NewPore/CinchesvsConnectors1/

cd $simPath

switch ($lval) 
    case 1: 
	set x = 120
	breaksw
    case 2: 
	set x = 160
	breaksw		
endsw



foreach l ( $x ) 
    cd len$l
    cd connector3
    cp $simPath/inputMCnoseed .
    tcsh $oxPath/NewPore/Scripts/seedOxRunfile.csh $seed
    pwd
    $oxPath/oxDNA inputMC$seed

    cd ../..
end

