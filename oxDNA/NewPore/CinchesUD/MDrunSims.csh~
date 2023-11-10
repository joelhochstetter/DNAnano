#!/bin/sh
pwd


set oxPath = $argv[1]

set c  = $argv[2]

set seed = $argv[3]

set simPath = $oxPath/NewPore/CinchesUD/

cd $simPath
pwd 
ls

#@ c = ( $c - 1 )

cd cinch$c
cp $simPath/inputMDnoSeed .
cp init.conf init$seed.conf
tcsh $oxPath/NewPore/Scripts/seedOxRunfileMD.csh $seed
pwd
$oxPath/oxDNA inputMD$seed
cd ..

