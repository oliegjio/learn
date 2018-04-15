/**
 * Friend functions (same applies to friend classes).
 * A friend function of a class is defined outside that class' scope but
 * it has the right to access all private and protected members of the class.
 * Even though the prototypes for friend functions appear in the class definition,
 * friends are not member functions.
 */

#include <iostream>
 
using namespace std;
 
class Box
{
  double width;
   
  public:
    friend void printWidth(Box box);
    void setWidth(double width);
};

// Member function definition.
void Box::setWidth(double width) { this->width = width; }

// Note that printWidth() is not a member function of any class.
void printWidth(Box box)
{
  /**
   * Because printWidth() is a friend of Box, it can
   * directly access any member of this class
   */
  cout << "Width of box is " << box.width << endl;
}
 
int main() {
   Box box;
 
   // Set box width without member function.
   box.setWidth(10.0);
   
   // Use friend function to print the wdith.
   printWidth(box);
 
   return 0;
}

// Output:

/**
 * Width of box is 10
 */