#include <vector>
#include <iostream>
#include <cstdlib>

using std::vector;
using std::cin;
using std::cout;
using std::endl;

int main() {
	vector<int>v = {1,2,3,4};
	vector<int>v_2 = &v;
	for (int i = 0; i < v_2.size(); i++) {
		cout << v[i] << endl;
	}
	return 0;
}

