#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

class Case {
  public:
  
    int a, b, n;
    
    Case (int _a,int _b,int _n) {
        a = _a;
        b = _b;
        n = _n;
    }
};
int main() {
    int t; cin >> t;
    
    vector<Case> cases;
    
    for (int i = 0; i < t; i++) {
        int a, b, n;
        cin >> a >> b >> n;
        
        Case _case(a, b, n);

        cases.push_back(_case);
    }
    
    for (int i = 0; i < t; i++) {
    	
    	int last = cases[i].a;
    	
    	for (int j = 0; j < cases[i].n; j++) {
    		
    		last = last + (cases[i].b << j);
    		
    		cout << last << " ";
    	}
    	cout << endl;
    }
    
    return 0;
}
