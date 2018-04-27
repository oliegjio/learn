defmodule Containers do
  
  def main do
    the_range = 1..10 # Range from 1 to 10.

    my_string = "This is my string!"
    String.length(my_string) # Length of the string.

    long_string = my_string <> " " <> "Long string."

    String.contains?(my_string, "my") # Is one string contains in the other.
    String.first(my_string) # Returns the first character of the string.
    String.at(my_string, 4) # Returns character in the string at index.
    String.slice(my_string, 5, 2) # Substring from X and N characters forward. OUTPUT: "is".

    String.reverse(longer_string) # Reverses a string.
    String.upcase(longer_string) # Uppercase.
    String.downcase(longer_string) # Lowercase.
    String.capitalize(longer_string) # Capitalizes string.
  end

end
