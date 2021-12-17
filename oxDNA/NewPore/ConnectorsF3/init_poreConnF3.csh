#!/bin/sh
pwd

set oxPath = $argv[1]# /project/DNAlienDynamics/DNAnano/oxDNA
set numConn = $argv[2] #either 4 or 7 or 11
set seed    = $argv[3]

pwd

#json to oxDNA
#python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100

#relax origami
#tcsh $oxPath/MyScripts/new_relax.sh

cp ../runMD1e5 runMD1e5
cp relaxed.conf start.conf

tcsh $oxPath/NewPore/Scripts/justSeedOxRunFile.csh $seed



touch external.conf #create empty force file

#introduce forces
#tether fix
foreach s ( 0.001 0.005 0.01 0.05 0.1 0.5 1.0 5.0 10.0 ) 
    rm external.conf
    python3 $oxPath/NewPore/Scripts/fix_tether.py prova.top external.conf 100 $s 21.14 69.96
    python3 $oxPath/NewPore/Scripts/fix_connectors.py external.conf $numConn $s 10.57
    #oxDNA $oxPath/NewPore/Scripts/runMD1e5
    $oxPath/oxDNA runMD1e5$seed
    mv log.dat 'log_init_teth'$s'.dat' 
    cp last_conf.dat start$seed.conf
end

cp start$seed.conf pore_tether$seed.conf

cp external.conf tether.conf


#generate cylinder
foreach s ( 0.001 0.005 0.01 0.05 0.1 0.5 1.0 5.0 10.0 ) 
    cp tether.conf external.conf
    #updated radius of barrel
    python3 $oxPath/NewPore/Scripts/generate_cylinder.py 0 10.57 100 $s external.conf 61.05
    #oxDNA $oxPath/NewPore/Scripts/runMD1e5
    $oxPath/oxDNA runMD1e5$seed    
    mv log.dat 'log_init_force'$s'.dat'         
    cp last_conf.dat start$seed.conf
end

cp start$seed.conf init$seed.conf

