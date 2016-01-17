#include <cmath>
#include <cstdio>
#include <vector>
#include <list>
#include <iostream>
#include <algorithm>
#include <climits>
struct myclass {
	bool operator() (long long int i, long long int  j) { return (i<j); }
} myobject;


int main() {

	unsigned long long N = 0;
	
	std::cin >> N;

	std::vector<long long int> A(N);

	for (long long int i = 0; i < N; i++)
	{
		std::cin >> A[i];
	}
	// Sort list
	std::sort(A.begin(), A.end(), myobject);

	//find smallest gap 

	std::vector<long long int> smallGapNum;

	long long int  smallSetGap = INT_MAX;
	
	for (long long int i = 1; i < N; i++)
	{
		long long int  g = abs(A[i - 1] - A[i]);
		if (g < smallSetGap)
		{
			smallGapNum.clear();
			smallGapNum.push_back( A[i - 1]);
			smallGapNum.push_back (A[i]);
		
			smallSetGap = g;

		}
		else if (g == smallSetGap)
		{
			smallGapNum.push_back(A[i - 1]);
			smallGapNum.push_back(A[i]);
		}

	}
	for (int i = 0; i < smallGapNum.size(); i++)
	{
		std::cout << smallGapNum[i] << " ";
	}
	return 0;
}
