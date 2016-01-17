#include <stdio.h>

int main() {
    double m; 
    int t, x;
    scanf("%lf %d %d", &m, &t, &x);
    printf("The final price of the meal is $%.0lf.", (t*m)/100 + (x*m)/100 + m);
    return 0;
}
