#include <iostream>


int main(){
  int n;
  std::cin >> n;
  for(int i = 1; i< n+1; i++)
  {
      for(int j = n; j > i ;j--)
      {
          std::cout << " ";
      }
      for(int j = 0; j <i ;j++)
      {
          std::cout << "#";
      }
      std::cout << "\n";
  }
  return 0;
}
