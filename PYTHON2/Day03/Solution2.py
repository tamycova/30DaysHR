#!/bin/python

import sys


n = int(raw_input().strip())

print 'Weird' if n%2 != 0 or (n >= 6 and n <= 20) else 'Not Weird'
