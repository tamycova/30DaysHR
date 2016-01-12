import sys

arr = []
for arr_i in range(6):
    arr_t = [int(arr_temp) for arr_temp in input().strip().split(' ')]
    arr.append(arr_t)

ans = - sys.maxsize
for i in range(4):
    for j in range(4):
        val = sum([arr[i][j + z] for z in range(3)] +
                  [arr[i + 2][j + z] for z in range(3)]) + arr[i + 1][j + 1]
        if val > ans:
            ans = val
print(ans)
