import sys

addressbook = {}

for _ in range(int(raw_input())):
    name = raw_input().strip()
    num = raw_input().strip()
    addressbook[name]= (num)

for line in sys.stdin:
    query = line.strip()
    elem = addressbook.get(query) 
    print query+"="+elem if elem else 'Not found'
