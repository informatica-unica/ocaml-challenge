# Straight

Consider the following types to represent French-suited cards:
```ocaml
type suit = S | H | D | C;;
type card = Card of int * suit;;
```

Write a function with type:
```ocaml
straight : card * card * card * card * card -> bool
```
which evaluates to true iff the hand contains a straight,
namely five cards in sequential order, possibly with different suites.
