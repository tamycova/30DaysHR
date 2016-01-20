#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <sstream>
using namespace std;

bool punct(char& c) {
    return ispunct(c);
}
int main() {
    string s;
    getline(cin,s);
    
    replace_if(s.begin(),s.end(), punct ,' ');
    
    vector<string> tokens;
    stringstream _stream(s);
    
    while(_stream) {
        string _s;
        _stream >> _s;
        
        tokens.push_back(_s);
    }
    
    cout << tokens.size() - 1;
    for (auto& x : tokens) {
        cout << endl;
        cout << x;
    }
    return 0;
}
