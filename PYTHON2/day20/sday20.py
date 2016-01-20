import re
str=raw_input()
str=str.replace('[',' ')
str=str.replace(']',' ')
str=str.replace('\\',' ')
#print str
s=re.split("!|[|,|?|.|_|'|@|+|]| ",str.strip())
print len(s)-s.count('')-s.count(' ')
for i in s:
    if i == '' or i==' ':continue
    print i.strip()
