#include <cmath>
#include <cstdio>
#include <vector>
#include <climits>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    int n; cin >> n;
    
    vector<int> input(n);
    for (int i = 0; i < n; i++) cin >> input[i];
    
    sort(input.begin(), input.end());
    
    int min = INT_MAX;
    
    for (int i = 0; i < n - 1; i++) {
        if (abs(input[i] - input[i+1]) < min) {
            min = abs(input[i] - input[i+1]);
        }
    }
    for (int i = 0; i < n - 1; i++) {
        if (abs(input[i] - input[i+1]) == min) {
            cout << input[i] << " " << input[i+1] << " ";
        }
    }
    cout << endl;
    return 0;
}
