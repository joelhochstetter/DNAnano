#!/bin/sh
pwd


#json to oxDNA
python2.7 ../../UTILS/cadnano_interface.py *.json he 100

#relax origami
source ../../MyScripts/new_relax.sh

cp relaxed.conf start.conf

#introduce forces
#tether fix
foreach s (0.001 0.01 0.05 0.1 0.5 1.0 5.0) 
    rm external.conf
    python /suphys/joelh/Documents/DNA/oxDNA/NewPore/Scripts/fix_tether.py prova.top external.conf 100 $s
    oxDNA /suphys/joelh/Documents/DNA/oxDNA/NewPore/Scripts/runMD1e4 
    cp last_conf.dat start.conf
end

cp start.conf pore_tether.conf

cp external.conf tether.conf

#generate cylinder
foreach s (0.001 0.01 0.05 0.1 0.5 1.0 5.0) 
    cp tether.conf external.conf
    python /suphys/joelh/Documents/DNA/oxDNA/NewPore/Scripts/generate_cylinder.py 8 11.5 100.0 $s external.conf
    oxDNA /suphys/joelh/Documents/DNA/oxDNA/NewPore/Scripts/runMD1e5
    cp last_conf.dat start.conf
        
end

cp start.conf init.conf
