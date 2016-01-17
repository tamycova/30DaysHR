def merge(A,i,mid,n):
    left = A[i:mid+1]
    right = A[mid+1:n+1]
    a=0
    b=0
    c=i
    
    while a<len(left) and b<len(right):
        if (left[a]<right[b]): 
            A[c]=left[a]
            a += 1
        else: 
            A[c]=right[b]
            b += 1
        c += 1
        
    while (a<len(left)): 
        A[c] = left[a]
        a += 1
        c += 1
    while (b<len(right)):
        A[c] = right[b]
        b += 1
        c += 1
    
def mergesort(A, i, j):
    if (i<j):    
        mid = (i+j)//2
        mergesort(A, i, mid)
        mergesort(A, mid+1, j)
        merge(A,i,mid,j)
            
def minDiff(A):
    min = A[1]-A[0]
    list = []
    for i in range(1, len(A)):
        #print(i, min, list)
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
mergesort(n,0,len(n)-1)
n = minDiff(n)
for i in n:
    print(i, end=" ")
            
