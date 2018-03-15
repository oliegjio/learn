// Pointer holds a value that is an address to a data that pointer points to.

// Read pointers from right to left.

// Data that `field` points to cannot be changed from `field`.
const char* field;

// The `field` cannot point to something different.
// This is the constant reference.
char* const field;

// Data that `field` points to cannot be changed from `field`.
// // The `field` cannot point to something different.
const char* const field;

// Null pointer:
int* nullPointer = 0;

// When reference is used in an expression, & denotes the address-of operator, which returns the address of a variable.
int num = 4;
int* pNum = &num;

// When reference is used in a declaration (including function parameters), it is used to provide another name, or another reference, or alias to an existing variable.
int num = 4;        // Existing variable is called `num`.
int& newNum = num;  // Now `newNum` and `num` can be used interchangeably.
// Same applies to function arguments (passed by reference).

// Dereferencing:
int num = 4;
int* pNum = &num;
int getNum = *pNum;

// Dereferencing and changing value:
int num = 4;
int* pNum = &num;
*pNum = 5; // Variable `num` is now holds 5.

// Passing a pointer by reference:
void passByReference(int *&pointerReference) { pointerReference = 0; } // Changing actual pointer value.
int* intPointer = 4;
passByReference(intPointer);
// OR:
void passByReference(int **pointerToPointer) { *pointerToPointer = 0; } // Changing actual pointer value.
int* intPointer = 4;
passByReference(&intPointer);