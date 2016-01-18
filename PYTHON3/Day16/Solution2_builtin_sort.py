def minDiff(A):
    min = A[1]-A[0]
    list = []
    for i in range(1, len(A)):
        if min == A[i]-A[i-1]:
            list.append(A[i-1])
            list.append(A[i])
            
        elif min > A[i]-A[i-1]:
            list.clear()
            min = A[i]-A[i-1]
            list.append(A[i-1])
            list.append(A[i])
    return list

n = int(input())
n = list(map(int,input().split()))
n.sort()
n = minDiff(n)
for i in n:
    print(i, end=" ")
            
