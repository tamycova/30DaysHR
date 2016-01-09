a, b = [int(i) for i in input().split()]
#recursive GCD oneliner: http://stackoverflow.com/a/33473749/522719
gcd = lambda m,n: m if not n else gcd(n,m%n)
print (gcd(a, b))
