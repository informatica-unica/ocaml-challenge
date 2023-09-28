# Alternating-even numbers

Say that a natural number is *alternating-even* iff all the digits in odd position are odd, and all those in even position are even 
(assuming that the position of the rightmost digit is 0).

For instance, 8, 72 and 1234 are alternating-even, while 3, 51 and 8234 are not.

Define a function with type:
```ocaml
alt_even: int -> bool
```
such that ``alt_even x`` evaluates to true if and only if x is alternating-even. 
