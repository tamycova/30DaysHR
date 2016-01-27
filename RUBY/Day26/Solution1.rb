d2, m2, y2 = STDIN.readline.split
d1, m1, y1 = STDIN.readline.split

t1 = Time.new(y1, m1, d1)     # expected on
t2 = Time.new(y2, m2, d2)     # returned on

fine = case
  when t2.year > t1.year
    10000
  when (t2.year == t1.year and t2.month > t1.month)
    500 * (t2.month - t1.month)
  when (t2.year == t1.year and t2.month == t1.month and t2.day > t1.day)
    15 * (t2.day - t1.day)
  else
    0
end

puts fine
