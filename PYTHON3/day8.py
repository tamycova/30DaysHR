import sys
n = int(next(sys.stdin))
dic = dict()
for i in range(n):
    name = next(sys.stdin).strip()
    number = next(sys.stdin).strip()
    dic[name] = number
for i in sys.stdin:
    name = i.strip()
    if name in dic:
        print("{0}={1}".format(name, dic[name]))
    else:
        print("Not found")
