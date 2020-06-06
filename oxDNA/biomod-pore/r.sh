#!/usr/bin/env bash
X=1;
for i in $(ls -t *.pov); do
  mv $i $(printf %05d.%s ${X%.*} ${i##*.})
  let X="$X+1"
done
