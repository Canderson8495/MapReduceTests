#/usr/bin/env python

from operator import itemgetter
import sys

current_system = None
current_count = 0
current_total = 0
system = None

# input comes from STDIN
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()

    # parse the input we got from mapper.py
    system, diff = line.split('\t', 1)

    # convert count (currently a string) to int
    try:
        diff = float(diff)
    except ValueError:
        # count was not a number, so silently
        # ignore/discard this line
        continue

    # this IF-switch only works because Hadoop sorts map output
    # by key (here: system) before it is passed to the reducer
    if current_system == system:
        current_count += 1;
        current_total += diff
    else:
        if current_system:
            print('%s\t%s' % (current_system, str(current_total / current_count)))
        current_count = 1
        current_system = system
        current_total = diff

# do not forget to output the last system if needed!
if current_system == system:
    print('%s\t%s' % (current_system, str(current_total/current_count)))
