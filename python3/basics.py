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

print('Print', 'multiple', 'strings', name) # You can print multiple things at the same time.

multi_line_string = '''
This is a
multiline string
'''

# String formatting:
print("%s %s %s" % ('I like the quote', multi_line_string, name))

print("Print withoug new line", end='') # Print without new line.

print("Multiple" * 5) # Prints string 5 times.

var1 = "text"
var2 = 5
print(f"Interpolate {var1} and {var2}") # Interpolation.

del multi_line_string # Delets a variable.
