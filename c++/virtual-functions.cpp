/**
 * A virtual function a member function which is declared within base
 * class and is re-defined (Overriden) by derived class. When you refer to a
 * derived class object using a pointer or a reference to the base class, you
 * can call a virtual function for that object and execute the derived
 * class’s version of the function.
 * 
 * Rules for virtual functions:
 * 1. They must be declared in public section of class.
 * 2. Virtual functions cannot be static and also cannot be a friend function of another class.
 * 3. Virtual functions should be accessed using pointer or reference of
 *    base class type to achieve run time polymorphism.
 * 4. The prototype of virtual functions should be same in base as well as derived class.
 * 5. They are always defined in base class and overridden in derived class. It is
 *    not mandatory for derived class to override (or re-define the virtual function),
 *    in that case base class version of function is used.
 * 6. A class may have virtual destructor but it cannot have a virtual constructor.
 */

#include <iostream>

using namespace std;
 
class Base
{
public:
    virtual void print ()
    { cout << "Print base class" << endl; }
 
    void show ()
    { cout << "Show base class" << endl; }
};
 
class Derived : public Base
{
public:
    void print ()
    { cout << "Print derived class" << endl; }
 
    void show ()
    { cout << "Show derived class" << endl; }
};
 
int main()
{
    Base* base;
    Derived derived;
    base = &derived;
     
    // Virtual function, binded at runtime.
    base->print(); 
     
    // Non-virtual function, binded at compile time.
    base->show(); 
}

// Output:

/**
 * Print derived class
 * Show base class
 */