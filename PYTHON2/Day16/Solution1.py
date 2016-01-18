n=int(raw_input())
a=map(int,raw_input().strip().split())
a.sort()
m=a[-1]-a[0]
li=[]
for i in range(1,len(a)):
    if m==a[i]-a[i-1]:
        li.extend([str(a[i-1]),str(a[i])])
    elif m>a[i]-a[i-1]:
        m=a[i]-a[i-1]
        li=[]
        li.extend([str(a[i-1]),str(a[i])])
print ' '.join(li)
