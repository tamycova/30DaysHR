import re
result = re.split("[ !\[,?.\\\\_'@+\]]", input())
result = list(filter(None, result))
print (len(result))
print ("\n".join(result))
