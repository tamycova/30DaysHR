#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int n; cin >> n;
    vector<int> queries(n);
    
    for (int i = 0; i < n; i++) cin >> queries[i];
    
    for (int& q : queries) {
        int sroot = sqrt(q);
        bool isprime = true;
        
        if (sroot * sroot == q) isprime = false;
        
        for (int t = 2; t < sroot && isprime; t++) {
            if (q % t == 0) {
                isprime = false;
                break;
            }
        }
        
        cout << (isprime ? "Prime" : "Not prime") << endl;
    }
    
    return 0;
}
