#!/usr/bin/env python

from operator import itemgetter
import sys

current_building = None
current_count = 0
current_total = 0
building = None

# input comes from STDIN
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()

    # parse the input we got from mapper.py
    building, temp= line.split('\t', 1)

    # convert count (currently a string) to int
    try:
        temp = float(temp)
    except ValueError:
        # count was not a number, so silently
        # ignore/discard this line
        continue

    # this IF-switch only works because Hadoop sorts map output
    # by key (here: word) before it is passed to the reducer
    if current_building == building:
        current_count += 1;
        current_total += temp
    else:
        if current_building:
            print('%s\t%s' % (current_building, str(current_total / current_count)))
        current_count = 1
        current_building = building
        current_total = temp

# do not forget to output the last word if needed!
if current_building == building:
    print('%s\t%s' % (current_building, str(current_total/current_count)))
