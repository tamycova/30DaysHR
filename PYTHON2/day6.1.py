#!/bin/python

import sys


n = int(raw_input().strip())

for i in range(1, n+1):
    print ('#'*i).rjust(n)

