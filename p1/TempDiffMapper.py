#!/usr/bin/env python

import sys

# input comes from STDIN (standard input)
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()
    # split the line into words
    words = line.split(',')
    try:
        absDiff = abs(float(words[2]) - float(words[3]))
    except:
        continue;
    # print system (diff between target and Actual) This is to average the temperature difference for all data for each system
    print('%s\t%s' % (words[4], absDiff))
