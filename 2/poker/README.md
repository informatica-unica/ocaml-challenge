# Poker

Consider the following types to represent French-suited cards:
```ocaml
type suit = S | H | D | C;;
type card = Card of int * suit;;
```

Write a function with type:
```ocaml
rndHand : unit -> card * card * card * card * card
```
which generates a random hand of 5 cards.

Then, write a function with type:
```ocaml
poker : card * card * card * card * card -> bool
```
which evaluates to true iff the hand contains a poker,
namely if there are four cards with the same value but different suites.


