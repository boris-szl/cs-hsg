#include <iostream>
#include <cmath>

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

// 4.2 Fibonacci Swag
int fibonacci(int n) {
	if (n < 0) {
		cout<<"Incorrect input. Plase positive integers only.";
		return 0;
	} else if (n==0) {
		return 0;
	} else if (n==1 || n==2) {
		return 1;
	} else {
		return fibonacci(n-1) + fibonacci(n-2);
	}
}

// 4.3 Sorting

int sort_numbers_by(int n) {
	int number = n;
	int size = trunc(log10(n)) + 1;
	int array[size];
	int B[] = {};
	for (int i = size - 1; i >= 0; i--) {
		B[i] = number & 10;
		number /= 10;
	}
	return B[0];

}

int main() {

	// Testing of 4.1
	int A[] = {2,4,6,8,10,12};

	// die Summe zwischen 2:n für jedes n in A
	for (int i = 0; i <= 5; i++)
		cout<<"Sum between 2 and "<<i<<": "<<recursive_sum(A[i])<<endl;

	int F[] = {0,1,2,3,4,5,6,7};
	for (int i = 0; i <= 7; i++)
		cout<<"Fibonacci for "<<F[i]<<": "<<fibonacci(F[i])<<endl;

	// Testing 
	cout<<sort_numbers_by(631)<<endl;
	// cout<<sort_numbers_by(631)<<endl;
}











