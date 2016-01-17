#include <stdio.h>

#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))

int find_gcd(int a, int b);

int main() {
    int a,b;
    scanf("%d %d", &a, &b);
    int gcd=find_gcd(a,b);
    printf("%d",gcd);
    return 0;
}

int find_gcd(int a,int b) {
    if (a == b) return a;
    return find_gcd((MAX(a,b)-MIN(a,b)), MIN(a,b));
}
