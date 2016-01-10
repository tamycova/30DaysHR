#include <cmath>
#include <cstdio>
#include <string>
#include <vector>
#include <map>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
	long int n;
	std::cin >> n;
	std::cin.get();
	std::cin.clear();

	std::vector<pair<std::string, long long int> > arr(n);
	std::map<std::string, std::string> direct;
	map<string, string>::iterator it;
	while (n-- > 0) {
		std::string name, num;
		getline(std::cin, name);
		getline(std::cin, num);
		
		direct.insert(make_pair(name, num));
	}
	while (true) {
		std::string input;

		std::getline(std::cin, input);

		if (input.size() == 0)break;

		auto loc = direct.find(input);
	
		if (loc == direct.end())
		{
			cout << "Not found\n";
		}
		else
		{
			cout << input << "=" << direct[input] << endl;
		}
	}
	return 0;
}
