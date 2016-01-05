#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int T,a,b,N,sum = 0;
    cin>>T;
    for(int i=0;i<T;i++)
    {
        cin>>a>>b>>N;
        sum = a+b;
        cout<<sum<<" ";
        for(int j=1;j<N;j++)
        {
            sum = sum + (pow(2,j) * b);
            cout<<sum<<" ";
        }
        cout<<endl;
    }
    return 0;
}
