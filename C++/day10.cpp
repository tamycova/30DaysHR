#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <bitset>
#include <string.h>
using namespace std;

int main() {
    int t; cin >> t;
    vector<string> answers(t);
    
    for (int i = 0; i < t; i++) {
        int x; cin >> x;
        string binary = bitset<32>(x).to_string();
        answers[i] = binary;
    }
    for (string& x : answers) {
    	// the problem wants us to remove leading zeros:
    	// thus, we must find the first 1 in the binary number
        int start_printing = 0;
        string zero = "0"; // make a string to use in comparisons
        for (int i = 0, n = x.size(); i < n; i++) {
            if (zero[0] == x[i]) continue; // i want to be explicit about continuing
            else {
                start_printing = i; // saves index of first 1
                break; // breaks the loop to escape overwriting start_printing
            }
        }
        
        for (int i = start_printing, n = x.size(); i < n; i++)
            cout << x[i];
        cout << endl;
    }
    return 0;
}