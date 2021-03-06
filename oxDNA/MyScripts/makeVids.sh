#!/usr/bin/bash

# $1 = prova.top (topology file)
# $2 = trajectoryMD.dat (trjajectory file)

cogli1 -o -t $1 $2
mkdir pics
mv *.pov pics
cd pics
for d in $(ls -v1 *.pov); do povray -D +H600 +W860 $d; done
ffmpeg -framerate 10 -pattern_type glob -i "*.png" ../vid.mp4
rm *.pov *.png
cd ..
