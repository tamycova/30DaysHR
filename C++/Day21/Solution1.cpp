#include <iostream>
#include <vector>

using namespace std;

// Add your code here
template <class T>
    void printArray(vector<T> arr) {
        for (auto& a : arr) {
            cout << a << endl;
        }
    }
    
int main() {
    vector<int> vInt{1, 2, 3};
    vector<string> vString{"Hello", "World"};
    
    printArray<int>(vInt);
    printArray<string>(vString);
    
    return 0;
}
