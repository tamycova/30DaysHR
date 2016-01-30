MAX_N = 200
MIN_N = 100

earliest_arrival = -1000
latest_arrival   =  1000

max_n_tests  = rand((MIN_N-5)..(MAX_N-3))

test_results = [true, false, true, false, true]
test_results += (max_n_tests - test_results.length).times.map { rand(0..1) }.map { |x| x == 0 ? false : true }

# N > 3 because there must be at least 3 arrivals -- positive, negative and zero
all_ns = max_n_tests.times.map { |x| x + 3 }.shuffle

tests = test_results.reverse.map do |is_positive|

  # N must be uniquie across all tests
  n = all_ns.pop
  k = rand(1..(n-2))

  to_be_early = is_positive ? rand(k..n) : rand(1..k)
  to_be_late  = n - to_be_early

  early = to_be_early.times.map { rand(earliest_arrival..0) }
  late  = to_be_late.times.map  { rand(1..latest_arrival)   }

  early[0] = 0 if early.index(0).nil?

  # it is just too complicated to correct the test to match the requirements,
  # so let's toss out the ones that do not satisfy the requirements
  if (early.index { |x| x < 0 }.nil?) or (late.length == 0)
    # bad test!
    nil
  else
    # good test!
    [n, k, (early+late).shuffle]
  end
end

good_tests = tests.delete_if { |t| t.nil? }

puts good_tests.length
good_tests.each { |n, k, tsts| puts "#{n} #{k}"; puts tsts.join(" ") }
