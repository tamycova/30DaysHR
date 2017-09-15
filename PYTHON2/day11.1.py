#!/bin/python
m = []
for i in range(6):
    m.append(map(int, raw_input().strip().split()))
s = []
[s.append(m[x][y]+m[x][y+1]+m[x][y+2]+m[x+1][y+1]+m[x+2][y]+m[x+2][y+1]+m[x+2][y+2]) for x in range(4) for y in range(4)]
print max(s)