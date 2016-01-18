#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

#define TRUE 1
#define FALSE 0

int main() {
    int t;
    scanf("%d", &t);
    while (t--) {
        unsigned n;
        scanf("%u", &n);
        
        // Since max is 2^31 we need at most 32 chars
        char result[32];
        memset(result, 0, sizeof(result));
        
        unsigned mask = 0x1 << 31;
        unsigned index = 0;
        int one_inserted = FALSE; // We skip leading zeros
        while (mask >>= 1) {
            char digit = (n&mask) ? '1' : '0';
            if (digit == '0' && !one_inserted)
                continue;
            result[index++] = digit;
            one_inserted = TRUE;
        } 
        printf("%s\n", result);
    }
  
    return 0;
}

