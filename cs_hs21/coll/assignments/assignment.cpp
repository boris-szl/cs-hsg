#include <iostream>

using namespace std;


	// ASSIGNMENT 3 Python -> C++

// Function prototypes (if we define the functions pre int main() body we dont need to prototype)

int sum_numbers(int start, int end);

int fizzbuzz(int limit);

int fizzbuzzWhile(int limit);

void fillUp(int x[],int size);

void showElements(int x[], int size);

void addElementsWhile(int size);


int main() {

	// 3.1
	int start = 0;
	int end = 10;
	cout<<"Total of the range called:\n";
	cout<<sum_numbers(start, end)<<endl;

	// Zwischenschritt
	int scores[5], numberOfScores = 5;
	fillUp(scores, numberOfScores);
	showElements(scores, numberOfScores);

	//3.2
	int limit = 5;
	int a[limit];

	cout<<fizzbuzz(limit)<<"\n";
}

int sum_numbers(int start, int end) 
{
	int total = 0; // declaring var total of dtype integer
	for (int i = start; i < end ; i++) {
		total += i;
	}
	return total;
}

int fizzbuzz(int limit) 
{
	int i = 0;
	int a[i];
	while (i < limit) 
	{
		if (i%5==0 && i%3==0) {
			"FizzBuzz">>a[i];
		} else if (i&5==0) {
			"Buzz">>a[i];s
		} else if (i%3==0) {
			"Fizz">>a[i];
		} else {
			i>>a[i];
		}
		i += 1;
	}
	return 0;https://outlook.office.com/owa/?realm=student.unisg.ch&exsvurl=1&ll-cc=1033&modurl=0&login_hint=Boris.Szelcsanyi@student.unisg.ch
}

void fillUp(int x[], int size) 
{
	cout<<"Enter "<<size<<" numbers\n";
	for (int i = 0; i < size; i++) 
	{
		cin>>x[i];
	}
}

void showElements(int x[], int size) 
{
	for (int i = 0; i < 5; i++) 
	{
		cout<<x[i]<<"\n";
	}
}
