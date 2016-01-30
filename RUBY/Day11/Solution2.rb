#!/bin/ruby

class HourGlassCalculator
  attr_reader :max
  
  def initialize arr
    @arr = arr
    @max = 0
  end
  
  def calc_max
    @max = calc1 1,1
    (1..@arr.length-2).each do |y|
      (1..@arr[y].length-2).each do |x|
        hg = calc1 x, y
        @max = hg if hg > @max
      end
    end
    return @max
  end
  
  def calc1 x, y
    (@arr[y-1][x-1..x+1] + [@arr[y][x]] + @arr[y+1][x-1..x+1]).reduce(:+)
  end
end

class HourGlassCalculatorCached < HourGlassCalculator
  def initialize arr
    super arr
    @cache = {}
    @dim_y = arr.length
  end
  
  def calc1 x, y
    [get_row(y-1, x-1), @arr[y][x], get_row(y+1, x-1)].reduce(:+)
  end
  
  def get_row y, x1
    get_from_cache y, x1 or put_in_cache calc_row(y,x1), y, x1
  end
  
  def calc_row y, x1
    (@arr[y][x1..(x1+2)]).reduce(:+)
  end
  
  def get_from_cache x, y
    @cache[ (y*@dim_y)+x ]
  end
  
  def put_in_cache val, x, y
    @cache[ (y*@dim_y)+x ] = val if y > 1 and y < (@dim_y - 1)
    val
  end
end

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

puts HourGlassCalculatorCached.new(arr).calc_max
