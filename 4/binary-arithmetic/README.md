# Binary arithmetic

Consider the following type to represent binary numbers as bit strings:
```ocaml
type bitstring = ZT | UT | Z of bitstring | U of bitstring;;
```
where `ZT` represents the string made by a single 0,
`UT` the string made by a single 1,
`Z s` the string made by a 0 followed by `s`, and
`U s` the string made by a 1 followed by `s`.

Write the following functions:
```ocaml
int_of_bitstring : bitstring -> int
```
converts a bitstring (interpreted as a number in base 2) into an integer.

```ocaml
succ : bitstring -> bitstring
```
computes the successor of a bitstring (interpreted as a number in base 2).

```ocaml
add : bitstring -> bitstring -> bitstring
```
computes the sum of two bitstrings (assuming they have the same length).
