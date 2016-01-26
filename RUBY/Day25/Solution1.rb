def is_prime? n
  return false if n <= 1
  return true  if n <= 3
  return false if (n % 2) == 0 or (n % 3) == 0
  
  # numbers 1..4 are already eliminated above, so start with 5
  from, to = 5, Math.sqrt(n).to_i
  
  # divisors that are multiple of 2 or 3 can be eliminated too,
  # so increment div by 6 and check both for n%div and n%(div+2)
  (from..to).step(6).find { |div| (n % div) == 0 or (n % (div+2)) == 0 }.nil?
end

def answer v
  v ? "Prime" : "Not prime"
end

n = STDIN.readline.to_i
STDIN.readlines.map(&:to_i).map { |x| is_prime? x }.each { |x| puts answer x }
