class TestReader
  def initialize inp
    @inp = inp
  end
  
  def each
    n_tests = @inp.readline.to_i
    while n_tests > 0 do
      n_tests -= 1
      yield @inp.readline.strip
    end
  end
end

class FunnyTester
  def self.funny1? s, i
    (s[i].ord - s[i-1].ord).abs != (s[s.length-i].ord - s[s.length-i-1].ord).abs
  end
  
  def self.funny? s
    ((1..(s.length - 1)).find { |i| funny1? s, i }).nil?
  end
end

TestReader.new(STDIN).each do |s|
  puts (FunnyTester.funny? s) ? "Funny" : "Not Funny"
end
