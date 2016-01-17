#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int power(int base, int exp) {
    int i, result = 1;
    for (i = 0; i < exp; i++)
        result *= base;
    return result;
 }

int main() {
    int T, a, b, N, sum;    
    scanf("%d", &T);
    for (int T_i = 0; T_i < T; T_i++) {
        scanf("%d %d %d", &a, &b, &N);
        sum = a;
        for (int N_i = 0; N_i < N; N_i++) {
            sum = sum + (power(2,N_i) * b);
            printf("%d ", sum);
        }
        printf("\n");
    }
    return 0;
}
