n = input()

dicter = {}

for i in range(n):
    a = raw_input()
    b = input()
    dicter[a] = b

for i in range(n):
    c = raw_input()
    if dicter.has_key(c):
        print c + "=" + str(dicter[c])
    else:
        print "Not found"
