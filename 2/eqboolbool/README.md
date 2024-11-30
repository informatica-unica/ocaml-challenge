# Equality of boolean functions

Write an infix function called `=?`:
```ocaml
( =? ) : (bool -> bool) (bool -> bool) -> bool
```

that checks whether two boolean functions are equal, i.e. they map the same inputs to the same outputs.

For example, the following unit tests hold:
```ocaml
assert ((fun b -> true) =? (fun b -> true));;
assert ((fun b -> b) =? (fun b -> true) = false);;
assert ((fun b -> false) =? (fun b -> true) = false);;
assert (not =? (fun b -> not (not b)) = false);;
assert ((fun b -> b) =? (fun b -> not (not b)));;
```