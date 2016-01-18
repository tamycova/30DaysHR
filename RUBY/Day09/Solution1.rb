def find_gcd(a,b)
  #Write the base condition
    if a == b || b == 0
        return a
    end
    return find_gcd(b,a%b)
end
#Take input
a, b =  gets.split().map(&:to_i)
gcd=find_gcd(a,b)
print (gcd)