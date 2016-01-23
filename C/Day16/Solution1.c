#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

void print_array(int a[], int n) {
    int i=0;
    for (; i<n; i++)
        printf("%d\n", a[i]);
}

void insertion_sort_array(int a[], int n) {
    int tmp;
    int i;
    
    scanf("%d", &a[0]);
    // Insert other elements in order
    for (i=1; i<n; i++) {
        scanf("%d", &tmp);
        int j=i-1;
        while (j >= 0 && a[j] > tmp) {
            // shift elements right
            a[j+1] = a[j];
            j--;
        }
        a[j+1] = tmp;
    }
}

int main() {
    
    int n;
    scanf("%d", &n);
    
    int array[n];
    memset(array, 0, sizeof(array));
    insertion_sort_array(array, n);
    
    int mindiff = array[n-1]-array[0];
    int i;
    for (i=1; i<n; i++) {
        int tmp = array[i]-array[i-1];
        if (tmp < mindiff)
            mindiff = tmp;
    }
    
    for (i=1; i<n; i++) {
        if (array[i]-array[i-1] == mindiff)
            printf("%d %d", array[i-1], array[i]);
    }
    return 0;
}

