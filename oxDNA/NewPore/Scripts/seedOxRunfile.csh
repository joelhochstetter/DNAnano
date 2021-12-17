#!/bin/sh
pwd


set seed = $argv[1]

cp inputMCnoSeed inputMC$seed

echo trajectory_file = trajectoryMC$seed.dat >> inputMC$seed
echo log_file = log$seed.dat >> inputMC$seed
echo energy_file = energy$seed.dat >> inputMC$seed
echo seed = $seed >> inputMC$seed
#echo conf_file = trajectoryMC$seed.dat >> inputMC$seed
echo lastconf_file = last_conf$seed.dat >> inputMC$seed
echo conf_file = init$seed.conf >> inputMC$seed
