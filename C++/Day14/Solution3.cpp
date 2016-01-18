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

    void computeDifference() {
       auto minmax = minmax_element(elements.begin(), elements.end()); 
       maximumDifference = *minmax.second - *minmax.first;
    }

    Difference(const vector<int> &v ) : elements(v), maximumDifference(0) {}

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
