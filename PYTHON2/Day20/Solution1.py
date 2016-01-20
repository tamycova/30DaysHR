import re
result = re.split("[ !\[,?.\\\\_'@+\]]", raw_input())
result = filter(None, result)
print len(result)
print "\n".join(result)
