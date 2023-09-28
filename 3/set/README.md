# Sets

A set can be represented as a list without duplicates, ignoring the ordering of elements.
Write the following functions to operate on sets represented as lists:
```ocaml
mem : 'a -> 'a list -> bool
```
`mem x s` is true iff the element `x` belongs to the set `s`.

```ocaml
dup : 'a list -> bool
```
`dup l` evaluates to true iff the list l contains duplicates (and therefore, it is not a set).

```ocaml
mkset : 'a list -> 'a list
```
removes the duplicates from a list, making is a set.

```ocaml
union : 'a list -> 'a list -> 'a list
```
computes the **union** of two sets.

```ocaml
inter : 'a list -> 'a list -> 'a list
```
computes the **intersection** of two sets.

```ocaml
diff : 'a list -> 'a list -> 'a list
```
computes the **difference** of two sets.

```ocaml
dsum : 'a list -> 'a list -> (int * 'a) list
```
computes the **disjoint union** of two sets.

```ocaml
powset : 'a list -> 'a list list
```
computes the **powerset** of a set.
