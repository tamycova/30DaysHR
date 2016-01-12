class TestReader
  @@T = 1000
  def initialize inp
    @inp = inp
  end
  
  def numbers
    n = @inp.readline.to_i
    if n < 0 || n > @@T
      raise ArgumentError "number of tests (#{n}) exceeds the limit (#{@@T})"
    end
    @inp.each_line { |line| yield line.to_i }
  end
end

class ConverterDecimalToBinary
  def self.generate_power2_series n_bits
    power2 = 1
    power2s = Array.new(1) {power2}
    (n_bits-1).times do |i|
      power2 += power2
      power2s << power2
    end    
    return power2s
  end
    
  @@N_MAX = 32
  @@power2s = generate_power2_series @@N_MAX
  
  def to_binary dec_x
    bin_x = ""
    (0..(@@N_MAX-1)).reverse_each do |i|
      if dec_x >= @@power2s[i]
        bin_x << "1"
        dec_x -= @@power2s[i]
      else
        bin_x << "0"
      end
    end
    return bin_x.sub(/^0+/,'')
  end
end

reader = TestReader.new STDIN
converter = ConverterDecimalToBinary.new

reader.numbers { |x| puts converter.to_binary x }

