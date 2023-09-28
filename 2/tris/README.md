# Tris

Write a function with type:
```ocaml
tris : 'a * 'a * 'a * 'a -> bool
```
such that `tris (a,b,c,d)` is true iff at least three elements of the quadruple `(a,b,c,d)` are equal.

Then, test the function through a function with type:
```ocaml
hand : unit -> int * int * int * int
```
which generates a random quadruple of elements in the range 1..10.
