import sys

n = int(raw_input().strip())
arr = map(int,raw_input().strip().split(' '))

for i in arr[::-1]:
    sys.stdout.write(str(i) + " ")
