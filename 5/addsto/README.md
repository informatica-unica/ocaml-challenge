# Adds to

Define a function with type:
```ocaml
adds_to : int -> int list -> int list list
```
such that `adds_to goal l` computes all the combinations of elements of `l` that sum up to `goal`, as a list of lists.

For instance, in the list `[1;2;3]` there are two sublists whose elements sum up to `3`:
```ocaml
assert add_to 3 [1;2;3] = [[3]; [1;2]]
```
If there's a `0` in the list, then it participates in every combination and it doubles their number:
```ocaml
assert add_to 3 [1;2;3;0] = [[3]; [3;0]; [1;2]; [1;2;0]]
```

More tests:
```ocaml
assert adds_to 15 [1;3;5] = [];;
assert adds_to 15 [1;2;3;4;5] = [[1;2;3;4;5]];;
assert adds_to 15 [1;2;3;4;5;10] = [[1;2;3;4;5]; [1;4;10]; [2;3;10]; [5;10]];;
```
