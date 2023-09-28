# Peano arithmetics

Consider the following type to represent natural numbers:
```ocaml
type nat = Z | S of nat
```

Write the following functions:

```ocaml
iseven : nat -> bool
```
detects if a number is even.

```ocaml
halve : nat -> nat
```
divides a natural number by two
(note: this is the integer division, where \eg 3 divided by 2 equals 1).
      
```ocaml
add : nat -> nat -> nat
```
adds two numbers.

```ocaml
mul : nat -> nat -> nat
```
multiplies two numbers.

```ocaml
equals : nat -> nat -> bool
```
checks equality.

```ocaml
leq : nat -> nat -> bool
```
checks if a number is less than or equal to another one.
