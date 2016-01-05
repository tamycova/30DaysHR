import sys
n = int(next(sys.stdin))
for c in range(n):
    a, b, N = [int(x) for x in next(sys.stdin).strip().split(" ")]
    ans = a
    cof = 0
    while N != 0:
        ans += 2**cof * b
        cof += 1
        N -= 1
        print(ans, end=" ")
    print("")
