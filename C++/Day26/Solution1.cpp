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
#include <algorithm>
#include <unordered_map>

using namespace std;


int main(){
    int d1, m1, y1;
    cin >> d1 >> m1 >> y1;
    int d2, m2, y2;
    cin >> d2 >> m2 >> y2;
    
    if (y1 == y2) {
        if (m1 == m2) {
            if (d1 <= d2) {
                cout << 0 << endl;
            } else {
                cout << 15 * (d1 - d2) << endl;
            }
        } else if (m1 < m2) {
            cout << 0 << endl;
        } else {
            cout << 500 * (m1 - m2) << endl;
        }
    } else if (y1 < y2) {
        cout << 0 << endl;
    } else {
        cout << 10000 << endl;
    }
    
    return 0;
}
