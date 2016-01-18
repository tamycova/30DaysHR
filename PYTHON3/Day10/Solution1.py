import sys
n = int(next(sys.stdin))
for i in range(n):
    print(bin(int(next(sys.stdin).strip()))[2:])
