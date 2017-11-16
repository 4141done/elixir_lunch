# Install Elixir
# brew update
# brew install elixir

#  Variable assignment
first_name = "Paul"

# Integers
1 + 1

# Floats
1.3 + 1.4

# booleans
true

# nil
nil

# :atoms
:hello


# Strings
"Doctor"
"Hello " <> "Doctor"

name = "Osmond"
"Hello #{name}"

# comparison
2 == 2
3 != 2

# List
[1, :name, nil, true, false, "Chris"]

sequence = [1, 2, 3, 4]

hd sequence
tl sequence

to_prepend = 0
[to_prepend | sequence]

sequence ++ [5]

# Everything is immutable
sequence # should not contain 5

# Maps
%{}

%{first_name: "Jacob"}
%{"first_name" => "Jacob"}

# Tuples
{:developer, "Shawn"}
{:data_engineer, "Robert"}

# Common operations on types
# Most of the operations you'd expect live in the module for that data type, or in Enum
Enum.sort([46, 1, 32])
List.first([32, 1])


##########
# Piping #
##########
Integer.to_string(List.first(Enum.sort([34, 1, 3])))

# becomes...
[46, 1, 32]
|> Enum.sort()
|> List.first()
|> Integer.to_string()

# The result of the express above gets added as the *first* argument in the next expression.


####################
# PATTERN MATCHING #
####################
1 = 2

# In lists
[head | tail] = [1, 2, 3]
[first, second | others] = [1, 2, 3, 4, 5]

# In maps
%{first_name: first_name} = %{first_name: "Sathya", last_name: "Vembanan", position: "Data QA"}
first_name

# In function heads
person = %{first_name: "Chip", last_name: "Rogers", position: "Bulk Bean Buyer"}
defmodule Basics do # Methods can only be defined within modules
  def go_to_medical_school(%{first_name: first_name}) do
    "Dr. #{first_name}, Phd"
  end
end
