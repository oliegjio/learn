#include <iostream>
 
using namespace std;
 
class Complex
{
private:
    double real;
    double imag;
 
public:
    // Default constructor.
    Complex(double r = 0.0, double i = 0.0) : real(r), imag(i) {}
 
    // A method to compare two Complex numbers.
    bool operator == (Complex rhs)
    {
       return (real == rhs.real && imag == rhs.imag) ? true : false;
    }
};
 
int main()
{
    Complex com1(3.0, 0.0);
 
    if (com1 == 3.0)
       cout << "Same";
    else
       cout << "Not Same";
    return 0;
}

// Output:

/**
 * Same
 */

/**
 * If a class has a constructor which can be called with a single argument, then this constructor
 * becomes conversion constructor because such a constructor allows conversion of the
 * single argument to the class being constructed.
 * We can avoid such implicit conversions as these may lead to unexpected results.We can
 * make the constructor explicit with the help of explicit keyword.
 * For example, if we try the following program that uses explicit keyword
 * with constructor, we get compilation error:
 */

#include <iostream>
 
using namespace std;
 
class Complex
{
private:
    double real;
    double imag;
 
public:
    // Default constructor.
    explicit Complex(double r = 0.0, double i = 0.0) : real(r), imag(i) {}
 
    // A method to compare two Complex numbers.
    bool operator== (Complex rhs)
    {
       return (real == rhs.real && imag == rhs.imag) ? true : false;
    }
};
 
int main()
{
    Complex com1(3.0, 0.0);
 
    if (com1 == 3.0)
       cout << "Same";
    else
       cout << "Not Same";
    return 0;
}