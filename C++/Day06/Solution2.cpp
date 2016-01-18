#include <map>
#include <set>
#include <list>
#include <cmath>
#include <ctime>
#include <deque>
#include <queue>
#include <stack>
#include <string>
#include <bitset>
#include <cstdio>
#include <limits>
#include <vector>
#include <climits>
#include <cstring>
#include <cstdlib>
#include <fstream>
#include <numeric>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <algorithm>
#include <unordered_map>

using namespace std;


int main(){
    int n;
    cin >> n;
    for(int i=n;i>=1;i--)
        {
            for(int j=1;j<i;j++)
                {
                cout<<" ";
                }
            for(int k=n;k>=i;k--)
                {
                cout<<"#";
                }
            cout<<"\n";
        }
    return 0;
}
