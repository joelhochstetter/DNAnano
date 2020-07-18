#!/bin/sh

set oxPath  = ~/Documents/DNAnano/oxDNA/
set numTrajFile = 15
set simPath = /import/silo2/joelh/fromArtemis/VaryTethLen4AssymetricBarrel

source saveSims.csh $oxPath $simPath 'ogSeq' $numTrajFile 
source saveSims.csh $oxPath $simPath 'shiftSeq700' $numTrajFile
source saveSims.csh $oxPath $simPath 'tethAllT' $numTrajFile
