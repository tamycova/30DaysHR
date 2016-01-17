N = gets.to_i
book = Hash.new
for i in (1..N)
    _name = gets.strip
    _number = gets.to_i
    book[_name] = _number
end

while line = gets
    _name = line.strip
    if book.key?(_name)
        puts "#{_name}=#{book[_name]}"
    else
        puts "Not found"
    end
end