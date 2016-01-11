#include <iostream>
#include <cstdlib>

using namespace std;

int min(int x, int y) {
  int outcome = x;
  if (y <= x) { outcome = y; }

  return outcome;
}

int max(int x, int y) {
  int outcome = x;
  
  if (y >= x) { outcome = y; }
  
  return outcome;
}

int gcd(int x, int y) {
  int outcome = y;
  if (x == y) {
    outcome = x;
  } else {
    outcome = gcd(max(x, y) - min(x, y), min(x, y));
  }

  return outcome;
}

int main() {

  int x, y = 0;
  cin >> x >> y;
  cout << gcd(x,y) << endl;

  return(0);
}
