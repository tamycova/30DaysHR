n = int(input())
A = sorted([int(i) for i in input().split()])

import sys
diff = sys.maxsize;
for i in range(n-1):
    a = A[i]
    b = A[i+1]
    temp_diff = abs(a-b)
    if temp_diff < diff:
        result = str(a) + " " + str(b)
        diff = temp_diff
    elif temp_diff == diff:
        result += " " + str(a) + " " + str(b)
print (result)
