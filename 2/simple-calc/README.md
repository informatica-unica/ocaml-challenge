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

Write a function:
```ocaml
make_operation : char -> int -> int -> operation
```
that, given as input a character (`'+'`, `'-'`, `'*'`, `'/'`) and two integer parameters, returns an operation.
If the first input parameter does not correspond to any of the available operations, or if it is a division with a zero denumerator, then the function must fail.

Write unit tests for your functions, using the `assert` statement.
