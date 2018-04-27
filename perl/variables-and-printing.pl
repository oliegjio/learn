use feature 'say'; # Allow you to use 'say' function which append a new line at the end of the string.

say 'Hello, world!'; # Print and append new line at the end.

=begin
You can use both single and double quote marks for strings.
But you can escape characters only in double quoted strings.
=cut
print "Hello, world!\n"; # Print without new line.

say("Something"); # You can use parentheses.

my $name = "John"; # Assign a variable.

my ($age, $street) = (40, 'Baker'); # Assign multiple variables.

# In double quoted strings you can also use variables:
my $my_info = "$name lives on \"$street\"";

# This is the way to avoid escaping characters:
# Use 'q' for single and 'qq' for double quotes.
$my_info = qq{$name lives on "$street"}; # Reassign value.

say $my_info;

# Multiline string.
my $bunch_of_info = <<"EOF";
This is a
bunch of information
on multiple lines
EOF

say $bunch_of_info;

my $first = 1;
my $second = 2;

($first, $second) = ($second, $first) # Switch variables.

