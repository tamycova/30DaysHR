
#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <string>
using namespace std;
class AdvancedArithmetic{
    public:
          virtual int divisorSum(int n)=0;
};
//Write your code here
class Calculator : public AdvancedArithmetic {
    
    int divisorSum(int n) {
        if (n == 1) return n;
        int sum = 1 + n;
        int t = 2, sqrtn = sqrt(n);
        while (t <= sqrtn) {
            if (n % t == 0) sum += (t + n/t);
            t++;
        }
        return sum;
    }
    
};
int main(){
    int n;
    cin>>n;
    AdvancedArithmetic *myCalculator=new Calculator(); 
    int sum=myCalculator->divisorSum(n);
    cout<<"I implemented: AdvancedArithmetic\n"<<sum;
    return 0;
}
