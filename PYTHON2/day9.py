def find_gcd(a,b):
    return find_gcd(b, a%b) if b > 0 else a
    
#Take input
a, b = map(int, raw_input().strip().split())
gcd=find_gcd(a,b)
print gcd
    

