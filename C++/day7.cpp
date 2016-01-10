#include <iostream>
#include <list>

int main(){
	int n;
	std::cin >> n;
	std::list<int> arr;
	for (int arr_i = 0; arr_i < n; arr_i++){
		int p;
		std::cin >> p;
		arr.push_back(p);
	}
	arr.reverse();

	for (auto g : arr)
	{
		std::cout << g << " ";
	}
	return 0;
}
