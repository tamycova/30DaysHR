#!/bin/ruby
N = gets.strip.to_i
if N % 2 == 1 || (N > 5 && N <= 20)
    puts "Weird"
else
    puts "Not Weird"
end