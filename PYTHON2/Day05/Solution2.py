# Enter your code here. Read input from STDIN. Print output to STDOUT
for _ in range(int(raw_input())):
    a, b, n = map(int, raw_input().strip().split())
    
    total = a
    for i in range(n):
        total += b*(2**i)
        print total,
    print ''
