#include <vector>
#include <iostream>


int main(){
	std::vector< std::vector<int> > arr(6, std::vector<int>(6));
	for (int arr_i = 0; arr_i < 6; arr_i++){
		for (int arr_j = 0; arr_j < 6; arr_j++){
			std::cin >> arr[arr_i][arr_j];
		}
	}
	
	std::vector<std::vector<int>> hours(4, std::vector<int>(4));
	
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			hours[i][j] += arr[i][j];
			hours[i][j] += arr[i+1][j+1];

			hours[i][j] += arr[i][j+1];
			hours[i][j] += arr[i][j+2];
			hours[i][j] += arr[i+2][j];
			hours[i][j] += arr[i + 2][j + 1];
			hours[i][j] += arr[i + 2][j + 2];
		}
	}
	int max = INT_MIN;
	for (auto h : hours)
	{
		for (auto t : h)
		{
			if (t > max)
			{
				max = t;
			}
		}
	}
	std::cout << max;
	return 0;
}
