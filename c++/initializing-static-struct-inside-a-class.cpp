struct SomeStruct
{
  int variable1;
  int variable2;
};

class SomeClass
{
public:
  SomeClass();
  ~SomeClass();
  
private:
  static struct SomeStruct someStruct;
};

SomeClass::SomeClass() {}
SomeClass::~SomeClass() {}

SomeStruct SomeClass::someStruct = []{
  SomeStruct some {};
  some.variable1 = 40;
  some.variable2 = 50;
  return some;
}();
