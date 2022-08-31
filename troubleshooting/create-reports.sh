# /bin/bash

# This script _should_ fail 
echo What is the directory from which to start?
read STARTDIR
echo Where should the reports be saved?
read OUTDIR

#modify this simple for statement to do something similar if without calling brunnhilde.py
for D in $STARTDIR/*; do
    brunnhilde.py --hash sha1 -l "$D" $OUTDIR/${D// /}"_brunnout"