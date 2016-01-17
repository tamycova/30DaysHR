N = gets.to_i
for i in (1..N)
    koeff = gets.split.map(&:to_i)
    _total = koeff[0] + koeff[1]
    for x in (1..koeff[2])
        print _total, " "
        _total += (2 ** x) * koeff[1]
    end
    puts
end
