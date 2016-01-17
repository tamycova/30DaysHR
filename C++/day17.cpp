#include <cmath>
#include <iostream>
#include <exception>
#include <stdexcept>
using namespace std;
/* BEGIN USER-MADE CODE */
struct MyException : public exception {
    const char* what() const throw() {
        return "n and p should be non-negative";
    }  
};

class Calculator {
      
    public:
        
        int power(int n, int p) {
            if (n < 0 || p < 0) {
                throw MyException();
            }
            return pow(n,p);
        }    
};
/* END USER-MADE CODE */
int main() {

    Calculator myCalculator=Calculator();

    int T,n,p; cin>>T;
    while(T-->0){
    	if(scanf("%d %d",&n,&p)==2){

        	try {
               int ans=myCalculator.power(n,p);
               cout<<ans<<endl; 
        	}
         	catch(exception& e){
            	cout<<e.what()<<endl;
         	}
         	
      	}
    }
}
