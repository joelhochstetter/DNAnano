#!/bin/sh

set oxPath  = ~/Documents/DNAnano/oxDNA/
set numTrajFile = 50
set simPath = /import/silo2/joelh/fromArtemis/CinchesvsConnectors1

source saveSims.csh $oxPath $simPath 'free' $numTrajFile 120
source saveSims.csh $oxPath $simPath 'free' $numTrajFile 160
source saveSims.csh $oxPath $simPath 'connector1' $numTrajFile 120
source saveSims.csh $oxPath $simPath 'connector3' $numTrajFile 120
source saveSims.csh $oxPath $simPath 'connector1' $numTrajFile 160
source saveSims.csh $oxPath $simPath 'connector3' $numTrajFile 160

source saveSims.csh $oxPath $simPath 'cinches_cl42_s10' $numTrajFile 120
source saveSims.csh $oxPath $simPath 'cinches_cl42_s5' $numTrajFile 120
source saveSims.csh $oxPath $simPath 'cinches_cl84_s10' $numTrajFile 120
source saveSims.csh $oxPath $simPath 'cinches_cl84_s5' $numTrajFile 120

source saveSims.csh $oxPath $simPath 'cinches_cl82_s10' $numTrajFile 160
source saveSims.csh $oxPath $simPath 'cinches_cl82_s10' $numTrajFile 160
source saveSims.csh $oxPath $simPath 'cinches_cl124_s10' $numTrajFile 160
source saveSims.csh $oxPath $simPath 'cinches_cl124_s5' $numTrajFile 160

