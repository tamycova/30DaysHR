import math
def chkPrime(num):
    if num == 1: return False
    for i in range (2, int(math.sqrt(num))+1):
        if (num % i) == 0: return False
    return True

N = int(input())
for i in range (N):
    if chkPrime(int(input())): print('Prime')
    else: print('Not prime')