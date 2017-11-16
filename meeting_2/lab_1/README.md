# Card dealer
Create a module that lets us deal cards.  It should have the following methods:

```
create_deck/0 # Creates a list containing some cards
shuffle/1 # returns a deck or hand in a different order
contains?/2 # Does the current deck or hand of cards contain a certain card?
deal/2 # Given a deck of cards, deal the specified number of cards

create_hand/1 # create a hand of a certain size.
```

List of things that might be helpful to understand

* Piping
* Lists


To get started
```
mix new cards
cd cards

mix test # Should pass
mix deps.get # should be nothing

# Add your code in cards.ex
```