#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <map>
#include <sstream>
using namespace std;


int main() {
    int n,i; cin >> n;
    cin.ignore(); // remove that \n from the buffer
    map<string,unsigned int> contacts;
    
    for (i = 0; i < n; i++) {
        string name; 
        getline(cin,name);
        
        string temp; // make temp string
        unsigned int number; //allocate for phone number

        getline(cin,temp); // load number into temp

        stringstream convert(temp); // make sstream 
        if (!(convert >> number)) number = 0; // get number from stream

        contacts[name] = number; // set element in map
    }

    string q;
    while(getline(cin,q)) {
        if (contacts.find(q) != contacts.end())
            cout << q << "=" << contacts[q] << endl;
        else cout << "Not found" << endl;
    }
    
    return 0;
}
