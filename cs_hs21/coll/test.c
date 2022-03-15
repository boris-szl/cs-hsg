#include <stdio.h>


int evenorodd(int n) {
	if (n%2==0) {
		return 1;
	} else
		return 0;
}

void scanMatrix(int n, int m, double A[m][n]) {
	for(int i=0;i<m;i++) {
		for(int j=0;i<n;j++)
			scanf("%lf", &A[i][j]);
	}
}

long long int  factorial(int n) {
	int zaehler = 1;
	for(int i= 0; i < n; i++) {
		zaehler *= n - i;
	}
	return zaehler;
}


int main() {
	int n;
	scanf("%d", &n);
	printf("%ld\n", factorial(n));


}


// Testing
	// Input: 10
	// Desired output: 1 (false)
	// Input: 7
	// Desired output: 0 (false)

