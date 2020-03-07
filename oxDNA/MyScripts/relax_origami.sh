#!/bin/sh

# run the relaxation procedure
pwd
oxDNA ~/Documents/DNA/oxDNA/EXAMPLES/RELAX_INITIAL_CONFIGURATION/input_weak_constant
mv last_conf.dat relaxed_weak.conf
oxDNA ~/Documents/DNA/oxDNA/EXAMPLES/RELAX_INITIAL_CONFIGURATION/input_strong_constant
mv last_conf.dat relaxed.conf
