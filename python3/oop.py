class SchoolMember:
    """Represents any school member."""

    school_number = 20 # Assign class variable.
    
    def __init__(self, name, age): # Constructor for the class.
        self.name = name # Assign instance variable.
        self.age = age

    def tell(self):
        """Tell my detains."""
        print('Name: {}, Age: {}'.format(self.name, self.age))

class Teacher(SchoolMember): # Inherit from 'SchoolMember'.
    """Represents a teacher."""

    def __init__(self, name, age, salary):
        # Call base class '__init__' method to initialize the base class part of an instance in the subclass.
        super().__init__(self, name, age)
        self.salary = salary

    def tell(self): # Overriding method.
        super().tell(self) # Call the base class 'tell' method.
        print('Salary: {}'.format(self.salary))

