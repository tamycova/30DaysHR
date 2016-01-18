#include <stdio.h>

int main(){
    int n, blanks, hashes; 
    scanf("%d",&n);
    blanks = n-1;
    hashes = 1;
    for (int i = 0; i != n; i++) {
        for (int blanks_i = 0; blanks_i < blanks; blanks_i++) printf(" ");
        for (int hashes_i = 0; hashes_i < hashes; hashes_i++) printf("#");
        printf("\n");
        blanks--;
        hashes++;
    }
    return 0;
}
