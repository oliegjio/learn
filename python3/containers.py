#########################
## LISTS:
#########################

grocery_list = ['Juice', 'Tomatoes', 'Potatoes'] # This is the list.
grocery_list[0] # Print out the first item of the list. OUTPUT: Juice.

grocery_list[0] = 'Green Juice' # Change value of list item.

'''
Takes elements from 1 to 3.
First index is inclusive.
Second index is exclusive.
'''
grocery_list[1:3]

other_events = ['Wash car', 'Check cash', 'Iron clothes']

to_do_list = [grocery_list, other_events] # Lists inside list (aka two dimensional).

to_do_list[1][1] # Taking values from multidimensional list.

grocery_list.append('Onions') # Append (at the end) item to the list.
grocery_list.insert(1, 'Pickle') # Insert item at the index of 1.
grocery_list.remove('Pickle') # Remove item from the list.
grocery_list.sort() # Sorts out the list (in this case in alphabetical order).
grocery_list.reverse() # Reverses the list.

to_do_list2 = other_events + grocery_list # Join two lists.

len(to_do_list2) # Length of the list.

list_of_numbers = [1, 2, 3, 4, 5]
max(list_of_numbers) # Maximum value in the list.
min(list_of_numbers) # Minimum value in the list.

############################
## TUPLES:
############################

# You cannot change tuple after it is created.
# You cannot reassign values inside a tuple after it is created.
pi_tuple = (3, 1, 4, 1, 5, 9)
pi_tuple[1] # Takes the second item in the tuple.

tuple_to_list = list(pi_tuple) # Convert tuple in to a list.
list_to_tuple = tuple(tuple_to_list) # Convert list in to a tuple.

len(pi_tuple) # Length of tuple.
min(pi_tuple) # Minimum value inside a tuple.
max(pi_tuple) # Maximum value inside a tuple.

###########################
## DICTIONARIES:
###########################

# Dictionaris is made up of values with unique key for each item you gonna be storing.
# You cannot join dictionaries together (with '+' sign).

super_villains = {
    'Fiddler': 'Isaac Bowin',
    'Captain Cold': 'Leonard Snart',
    'Weather Wizard': 'Mark Mardon'
}
super_villains['Captain Cold'] # Takes a value for the key.

del super_villains['Fiddler'] # Deletes an item inside a dictionary.

super_villains['Weather Wizard'] = 'Hartley Rathaway'

len(super_villains) # Length of the dictionary.
super_villains.get('Captain Cold') # Get the value for the key.
super_villains.keys() # Get the keys from a dictionary (as a list).
super_villains.values() # Get the values from a dictionary (as a list).

some_dict = {
    'Some': 'Value',
    'Another': 'Value',
    'And': 'Someghing'
}

together = {**super_villains, **some_dict} # Join two dictionaries.
