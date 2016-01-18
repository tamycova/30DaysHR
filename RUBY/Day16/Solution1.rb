n = STDIN.readline.to_i
arr = STDIN.readline.split(' ').map(&:to_i).sort

first_result = [(arr[0]-arr[1]).abs,[[arr[0],arr[1]]]]
final_result = arr[2,arr.length].inject([first_result, arr[1]]) do |tuple, a|
  best_result, last_a = tuple
  diff = (a-last_a).abs
  if diff < best_result[0]
    best_result = [diff, [[last_a,a]]]
  elsif diff == best_result[0]
    best_result[1] << [last_a,a]
  end
  [best_result, a]
end

puts final_result[0][1].flatten.join(" ")
