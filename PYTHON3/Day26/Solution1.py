actual = list(map(int, input().split()))
expected = list(map(int, input().split()))
diff = [x-y for x,y in zip(actual,expected)]
if diff[2]>0: print(10000)
elif diff[1]>0: print(diff[1]*500)
elif diff[0]>0: print(diff[0]*15)
else: print(0)
    