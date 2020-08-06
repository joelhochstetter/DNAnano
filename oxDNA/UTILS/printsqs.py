#!/usr/bin/env python

import base
import readers
import os.path
import sys

if len(sys.argv) < 2:
    base.Logger.log("Usage is %s topology" % sys.argv[0], base.Logger.CRITICAL)
    sys.exit()

top_in = sys.argv[1]

try:
    inp = open (top_in, 'r')
except:
    base.Logger.die ('Could not open %s. Aborting' % top_in)

lines = inp.readlines ()

nn = int (lines[0].split()[0])
ns = int (lines[0].split()[1])
base.Logger.log ('detected %i strands and a total of %i nucleotides' % (ns, nn))

startNt =  [0 for i in xrange(ns)]
endNt   =  [0 for i in xrange(ns)]

sqs = ['' for i in xrange (ns)]
for line in lines[1:]:
    words = line.split()
    index = int(words[0]) - 1
    sqs[index] += words[1]
    if int(words[2]) == -1:
        startNt[index] = int(words[3]) - 1
    if int(words[3]) == -1:
        endNt[index] = int(words[2]) + 1        

sidx = 0

print("Printing 5' to 3'")
for s in sqs:
    print('SeqIdx:',sidx+1,'Length: ', endNt[sidx]-startNt[sidx]+1,'Start: ',startNt[sidx],'End: ',endNt[sidx],s[::-1])
    sidx += 1
    

inp.close ()

