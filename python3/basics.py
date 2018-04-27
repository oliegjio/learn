import random # Import random module generator.
import sys # Import system-specific functions.
import os # Import functions for operating system interface. Such read files etc...

# You can use single or double quotes for strings. They are the same.
print("Hello, world!") # Print with new line.

'''
This is the
multiline
comment!
'''

name = "John" # Variable assignment.
print(name)
name = 15 # Variables are weakly typed.

print(5 % 4) # Remainder of the division. OUTPUT: 1.
print(5 ** 4) # Raise 5 to the power of 4.
print(5 // 2) # Floor division, integer division. OUTPUT: 2.

multi_line_string = '''
This is a
multiline string
'''

# String formatting:
print("%s %s %s" % ('I like the quote', multi_line_string, name))

print("Print withoug new line", end='') # Print without new line.

print("Multiple" * 5) # Prints string 5 times.
