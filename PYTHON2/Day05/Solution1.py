import sys

loop = input()
while loop:
    a, b, n = map(int, raw_input().strip().split())
    
    for i in range(n):
        num = b
        for j in range(i):
            num += 2**(j+1) * b
        sys.stdout.write(str(num+a) + ' ')
    
    sys.stdout.write('\n')
    loop -= 1
