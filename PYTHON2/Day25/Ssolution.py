import math
t=int(raw_input())
while t>0:
    fl=True
    n=int(raw_input())
    for i in range(2,int(math.sqrt(n))):
        if n%i==0:
            fl=False
            break
    if n==1:fl=False
    if fl:print 'Prime'
    else :print 'Not prime'
    t=t-1
