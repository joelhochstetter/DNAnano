#!/usr/bin/bash
cogli1 -o -t prova.top trajectoryMD.dat
mkdir pics
mv *.pov pics
cd pics
for d in $(ls -v1 *.pov); do povray -D +H600 +W860 $d; done
ffmpeg -framerate 10 -pattern_type glob -i "trajectory*.png" ../vid.mp4
cd ..
