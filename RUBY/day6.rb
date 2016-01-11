#!/bin/ruby
n = gets.strip.to_i
for i in (1..n)
  print ' ' * (n - i)
  puts '#' * i
end
