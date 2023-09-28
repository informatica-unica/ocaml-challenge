# Comparing fractions

Assume to represent a fraction a/b as a pair (a,b).
Write the following functions:
```ocaml
is_posfrac : int * int -> bool
```
such that ``is_posfrac (a,b)`` is true iff (a,b) is a positive fraction (note: if the denominator is 0, then the pair is not a fraction).

```ocaml
compare_posfrac : int * int -> int * int -> int
```
which compares two positive fractions (failing if one of them is not such). The result of the comparison is:
- 0, if the two fractions are equal (i.e. they represent the same rational number);
- 1, if the first fraction is greater than the second;
- -1, otherwise

For instance, the following assertions must pass:
```ocaml
assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;
```

Finally, write a function:
```ocaml
compare_frac : int * int -> int * int -> int
```
which compares two fractions (not necessarily positive).

**Warning**: it is strictly forbidden to convert the fractions to floats!
