# Enter your code here. Read input from STDIN. Print output to STDOUT
m = float(raw_input())
t = float(raw_input()) / 100
x = float(raw_input()) / 100

total = m*(1+t+x)

print 'The final price of the meal is $%d.' % round(total)


