#include <stdio.h>

int main(){
    int N;
    scanf("%d", &N);
    int nums[N];
    for (int N_i = N; N_i > 0; N_i--) scanf("%d ", &nums[N_i]);
    for (int N_i = 0; N_i < N; N_i++) printf("%d ", nums[N_i+1]);
    return 0;
}
