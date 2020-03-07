#!/bin/sh

# run the relaxation procedure
pwd

cp prova.top top.top
cp prova.conf start.conf
oxDNA ~/Documents/DNA/oxDNA/EXAMPLES/NEW_RELAX_PROCEDURE/input_min
cp last_conf.dat stage1.dat
oxDNA ~/Documents/DNA/oxDNA/EXAMPLES/NEW_RELAX_PROCEDURE/input_relax
mv last_conf.dat relaxed.conf
