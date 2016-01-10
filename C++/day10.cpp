#include <cmath>
#include <cstdio>
#include <iostream>
#include <list>
#include <algorithm>

std::list<long long int> changeToBinary(long long int num)
{
	std::list<long long int> val;

	for (int q = 0; num > 0; q++)
	{
		if ((num % 2) == 0)
		{
			val.push_back(0);
		}
		else
		{
			val.push_back(1);
		}
		num /= 2;
	}
	return val;
}

int main() {

	int t = 0;
	std::cin >> t;
	// for number of test cases
	for (int i = 0; i < t; i++)
	{
		//get input 
		long long int n = 0;
		std::cin >> n;
		std::list<long long int> binary;
		binary = changeToBinary(n);
		binary.reverse();
		for (auto f : binary)
		{
			std::cout << f ;

		}
		std::cout << "\n";

	}
	return 0;
}
