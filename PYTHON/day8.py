D = dict()
for n in range(int(raw_input())):
    name = raw_input()
    num = raw_input()
    D[name] = num
    
while(True):
    try:
        name = raw_input()
        print name + "=" + D[name]
    except EOFError:
        break
    except KeyError:
        print "Not found"
