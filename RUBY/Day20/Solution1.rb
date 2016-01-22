class Tokenizer
  @default_delimiters = " ![,?.\\_'@+]"
  class << self
    attr_accessor :default_delimiters
  end
  
  def initialize s, delimiters = nil
    @s = s
    @delimiters = delimiters || Tokenizer.default_delimiters
  end
  
  def each
    token = ''
    @s.chars do |c|
      if @delimiters.include? c
        if not token.empty?
          yield token
          token = ''
        end
      else
        token << c
      end
    end
    yield token unless token.empty?
  end
end

tokens = []
Tokenizer.new(STDIN.readline).each { |t| tokens << t }

puts tokens.length, tokens
