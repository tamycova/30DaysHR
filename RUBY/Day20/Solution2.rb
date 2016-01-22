class Tokenizer
  def initialize delimiters
    @delimiters = delimiters
  end
  
  def tokenize s
    s.split(/[#{@delimiters}]/).delete_if { |t| t.empty? }
  end
end

tkz = Tokenizer.new " !\\[,?.\\\\_'@+\\]"
ts = tkz.tokenize STDIN.readline

puts ts.length, ts
