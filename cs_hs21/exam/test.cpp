#include <cstdlib>
#include <iostream>


using std::cin;
using std::cout;
using std::endl;


void foo(int* a, int& b) {
  int c = *a;
  b = b + 3;
  c = c + b;
}

int main() {

  int z = 7;
  int y = 5;
  foo(&z, y);
  std::cout << z + y << std::endl;
  return 0;



}
