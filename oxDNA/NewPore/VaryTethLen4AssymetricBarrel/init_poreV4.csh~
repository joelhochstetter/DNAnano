#!/bin/sh
pwd

set oxPath = ~/Documents/DNAnano/oxDNA

#json to oxDNA
#python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100

#relax origami
tcsh $oxPath/MyScripts/new_relax.sh


cp relaxed.conf start.conf

#introduce forces
#tether fix
foreach s (0.001 0.005 0.01 0.05 0.1 0.5 1.0 5.0 10.0) 
    rm external.conf
    python3 $oxPath/NewPore/Scripts/fix_tether.py prova.top external.conf 100 $s 21.14 69.96
    oxDNA $oxPath/NewPore/Scripts/runMD1e5
    mv log.dat 'log_init_teth'$s'.dat' 
    cp last_conf.dat start.conf
end

cp start.conf pore_tether.conf

cp external.conf tether.conf

#generate cylinder
foreach s (0.001 0.005 0.01 0.05 0.1 0.5 1.0 5.0 10.0) 
    cp tether.conf external.conf
    #python $oxPath/NewPore/Scripts/generate_cylinder.py 8 11.5 100.0 $s external.conf    
    #updated radius of barrel
    python3 $oxPath/NewPore/Scripts/generate_cylinder.py 0 10.57 100 $s external.conf 61.05
    oxDNA $oxPath/NewPore/Scripts/runMD1e5
    mv log.dat 'log_init_force'$s'.dat'         
    cp last_conf.dat start.conf
end

cp start.conf init.conf
