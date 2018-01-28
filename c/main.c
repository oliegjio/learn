#include <stdio.h>

/*
Types:
- char, 1 byte, -128 to 127 or 0 to 255.
- unsigned char, 1 byte, 0 to 255.
- signed char, 1 byte, -128 to 127.
- int, 2 or 4 bytes, -32768 to 32767 or -2147483648 to 2147483647.
- unsigned int, 2 or 4 bytes, 0 to 65535 or 0 to 4294967295.
- short, 2 bytes, -32768 to 32767.
- unsigned short, 2 bytes, 0 to 65535.
- long, 4 bytes, -2147483648 to 2147483647.
- unsigned long, 4 bytes, 0 to 4294967295.
- float, 4 bytes, 1.2E-38 to 3.4E+38, 6 decimal places.
- bouble, 8 bytes, 2.3E-308 to 1.7E+308, 15 decimal places.
- long double, 10 bytes, 3.4E-4932 to 1.1E+4932, 19 decimal places.
*/

/*
A pointer of type void represents the address of an object, but not it's type
*/

/*
Declaration of a variable/function simply declares that the variable/function exists somewhere in the program but the memory is not allocated for them. When we define a variable/function, it also allocates memory for that variable/function.
*/

/*
Variable or function can be declared any number of times, but can be defined only once.
*/

/*
Keyword "extern" used with variable definition declares the variable, but you will need to define it somewhere else, outside of this file:
extern int var;

Keyword "extern" also expand visibility of variable to whole program.
*/

int main() {
  int i, j, k;

  printf("Storage size for int: %d bytes \n", sizeof(int));

  return 0;
}
