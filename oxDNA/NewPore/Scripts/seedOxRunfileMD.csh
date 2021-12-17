#!/bin/sh
pwd


set seed = $argv[1]

cp inputMDnoSeed inputMD$seed

echo trajectory_file = trajectoryMD$seed.dat >> inputMD$seed
echo log_file = log$seed.dat >> inputMD$seed
echo energy_file = energy$seed.dat >> inputMD$seed
echo seed = $seed >> inputMD$seed
#echo conf_file = trajectoryMD$seed.dat >> inputMD$seed
echo lastconf_file = last_conf$seed.dat >> inputMD$seed
echo conf_file = init$seed.conf >> inputMD$seed
