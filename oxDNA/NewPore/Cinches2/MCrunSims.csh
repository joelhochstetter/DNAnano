#!/bin/sh
pwd


set oxPath = $argv[1]

set c  = $argv[2]

set seed = $argv[3]

set simPath = $oxPath/NewPore/Cinches2/

cd $simPath
pwd 
ls

@ c = ( $c - 1 )

cd cinch$c
cp $simPath/inputMCnoSeed .
tcsh $oxPath/NewPore/Scripts/seedOxRunfile.csh $seed
pwd
$oxPath/oxDNA inputMC$seed
cd ..

