#!/bin/python3
N = int(input().strip())

if N % 2 == 1:  #If N is odd, print "Weird".
    print("Weird")
if N % 2 == 0 and N in range(2,6):  #If N is even and, in between the range of 2 and 5(inclusive), print "Not Weird".
    print("Not Weird")
if N % 2 == 0 and N in range(6,21):    #If N is even and, in between the range of 6 and 20(inclusive), print "Weird".
    print("Weird")
if N % 2 == 0 and N > 20:   #If N is even and N>20, print "Not Weird".
    print("Not Weird")