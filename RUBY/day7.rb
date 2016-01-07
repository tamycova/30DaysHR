#!/bin/ruby
n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
arr.reverse.each do |x| print x , " " end
