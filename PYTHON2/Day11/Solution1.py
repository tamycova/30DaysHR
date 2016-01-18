#!/bin/python

import sys


arr = []
for i in xrange(6):
    arr.append(map(int, raw_input().strip().split()))
    
m = -sys.maxint-1
for i in xrange(1, 5):
    for j in xrange(1,5):
        partial = arr[i][j]+arr[i-1][j-1]+arr[i-1][j]+arr[i-1][j+1]+arr[i+1][j-1]+arr[i+1][j]+arr[i+1][j+1]
        if partial > m:
            m = partial
print m
        
