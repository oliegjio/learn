defmodule Variables do
  def main do
    name = IO.gets("What is your name? ") |> String.trim # Prompt to enter a string.
    IO.puts "Hello #{name}" # String interpolation.
    
    4 * 10 |> IO.puts # Operator `|>` feeds left hand output to right hand input. Prints 40.

    my_int = 123
    IO.puts "Is integer #{is_integer(my_int)}" # Is variable integer?

    my_float = 3.123
    is_float(my_float) # Is variable float?

    # Atom is data type such as its name is equal to its value.
    is_atom(:Moscow) # Is variable atom?
    :"Whitespace atom" # Atom with two words (may be any number of words).

    1 === 1.0 # Compare values and types. OUTPUT: false.
    1 == 1.0 # Compare only values. OUTPUT: true.
    1 !== 1.0 # OUTPUT: true.
    1 != 1.0 # OUTPUT: false.

    string = "Some string"
    IO.inspect String.split(string, " ") # Prints in a form of internal state. OUTPUT: ["Some", "string"].

    div(5, 4) # Integer division. OUTPUT: 1.
    rem(5, 4) # Remainder of division. OUTPUT: 1.

    age = 16
    (age <= 16) and ((age >= 23) or (age == 25))
    
  end
end
