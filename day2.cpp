#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int t,x;
    double m,price;
    cin>>m>>t>>x;
    price = (m+(m*t/100)+(x*m/100));
    if((price - int(price)) < 0.5 )
    {
        cout<<"The final price of the meal is $"<<int(price)<<".";
    }
    else
    {
        cout<<"The final price of the meal is $"<<int(price)+1<<".";
    }
    return 0;
}
