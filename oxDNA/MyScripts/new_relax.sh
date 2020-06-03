#!/bin/sh

# run the relaxation procedure
pwd

set oxPath = ~/Documents/DNAnano/oxDNA

cp prova.top top.top
cp prova.conf start.conf
oxDNA $oxPath/EXAMPLES/NEW_RELAX_PROCEDURE/input_min
cp last_conf.dat stage1.dat
oxDNA $oxPath/EXAMPLES/NEW_RELAX_PROCEDURE/input_relax
mv last_conf.dat relaxed.conf

#Re-run the 2nd step if the relaxation procedure fails
oxDNA $oxPath/EXAMPLES/NEW_RELAX_PROCEDURE/test_relax
while (! -f last_conf.dat ) 
    cp relaxed.conf stage1.dat
    oxDNA $oxPath/EXAMPLES/NEW_RELAX_PROCEDURE/input_relax
    mv last_conf.dat relaxed.conf
    oxDNA $oxPath/EXAMPLES/NEW_RELAX_PROCEDURE/test_relax
end

#remove the test file
rm last_conf.dat
