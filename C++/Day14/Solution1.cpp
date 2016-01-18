#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>

using namespace std;

class Difference {
    private:
    vector<int> elements;
  
  	public:
  	int maximumDifference;
  		
    // Add your code here

    Difference (vector<int> _elements)
        : elements(_elements), maximumDifference(0) {}

    void computeDifference() {
        for (int i = 0, n = elements.size(); i < n; i++) {
            
            for (int j = i + 1; j < n; j++) {
            
                if (i == j) j++;
                
                int sum = abs(elements[i] - elements[j]);
                
                if (sum > maximumDifference) {
                    maximumDifference = sum; 
                }
            } 
        }
    }
}; // End of Difference class

int main() {
    int N;
    cin >> N;
    
    vector<int> a;
    
    for (int i = 0; i < N; i++) {
        int e;
        cin >> e;
        
        a.push_back(e);
    }
    
    Difference d(a);
    
    d.computeDifference();
    
    cout << d.maximumDifference;
    
    return 0;
}
