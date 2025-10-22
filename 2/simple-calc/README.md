# Simple calculator

Consider the following variant type to define simple arithmetic operations:
```ocaml
operation = Add of int * int | Sub of int * int | Mul of int * int | Div of int * int
```
Write a function:
```ocaml
eval : operation -> int option
```
that evaluates the operation.

Assume integer division; in case of division by zero, the returned value must be `None`.
