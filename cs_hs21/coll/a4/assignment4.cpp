#include <iostream>

using namespace std;

// --- ASSIGNMENT 4 ---

// 4.1: Recursion: Sum betwenn even integers
int recursive_sum(int n = 2) {
	if (n <= 4 || n <= 2) {
		return 0;
	} else {
		return n + recursive_sum(n-2) - 2;
	}
}

int main() {

	// Testing of 4.1
	int array_even[] = {2,4,6,8,10,12};
	for (int i = 0; i <= 5; i++)
		cout<<"Sum between 2 and "<<i<<": "<<recursive_sum(array_even[i])
		<<"\n";

		// 4.2:
}






