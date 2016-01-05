for i in range(int(input())):
    [a, b, N] = map(int, input().split())
    for z in range(N):
        a += 2**z * b
        print( str(a) + ' ', end='')
    print("")