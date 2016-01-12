#include <iostream>

using namespace std;

int main(){
    int n;
    cin >> n;
    for (int i = 1; i <= n; i++) {
		for (int x = 1; x < (n - i + 1); x++) {
			printf(" ");
		}
		for (int x = 1; x < (i + 1); x++) {
			printf("#");
		}
		printf("\n");
	}
    return 0;
}