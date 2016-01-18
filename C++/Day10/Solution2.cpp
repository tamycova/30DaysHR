#include <iostream>
#include <bitset>
#include <string>

using namespace std;

int main()
{
    int n, decimal;
    string binary;
    
    
    cin>> n;
    
    for(int i = 0; i < n; i++){
        cin>>decimal;
        binary = bitset<64>(decimal).to_string();
        binary.erase(0, min(binary.find_first_not_of('0'), binary.size()-1));
        cout<<binary<<endl;
        
    }
    
    return 0;
}
