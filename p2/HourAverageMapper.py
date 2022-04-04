#!/usr/bin/env python

import sys
from datetime import datetime


# input comes from STDIN (standard input)
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()
    # split the line into words
    words = line.split(',')
    building = words[6]
    #3rd column is actual temperature
    actualTemp = words[3]
    # I'm going to make the key the building id first.  I'll use this to find the average temperature between 9-5 (Normal business hours)
    try: 
        time = datetime.strptime(words[1], '%H:%M:%S')
    except:
        continue

    if time.time().hour >= 9 and time.time().hour <= 17: 
        print('%s\t%s' % (building+' '+str(time.time().hour), actualTemp))
