#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA
set simPath = $oxPath/NewPore/CinchesvsConnectors1/
set lval = $argv[1]


cd $simPath


switch ($lval) 
    case 1: 
	    set x = 120
	    breaksw
    case 2: 
	    set x = 160
	    breaksw
endsw


#set-up sequences
foreach l ( $x )
    cd len$l
    cd free
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    tcsh $simPath/init_poreFree.csh
        
    cd ..
    cd connector1
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
    tcsh $simPath/init_poreConn.csh 1

    cd ..
    cd connector3
    cp $simPath/oxDNA1_sequence_dependent_parameters.txt .    
    tcsh $simPath/init_poreConn.csh 3
    
    @ cl1 = ($l - 36)
    @ cl2 = ($l - 78)        
    
    foreach cl ( $cl1 $cl2 )
        foreach s ( 5 10 )
            cd ..   
            cd 'cinches_cl'$cl'_s'$s
            cp $simPath/oxDNA1_sequence_dependent_parameters.txt .
            tcsh $simPath/init_poreFree.csh
        end
    end    
    
    cd ../..
end
    
