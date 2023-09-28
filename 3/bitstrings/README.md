# Bit strings

Consider the following type to represent bit strings:
```ocaml
type bitstring = E | Z of bitstring | U of bitstring;;
```
where `E` represents the empty string,
`Z s` the string made by a 0 followed by `s`, and
`U s` the string made by a 1 followed by `s`.

Write the following functions:
```ocaml
string_of_bitstring : bitstring -> string
```
converts a bitstring into a string.

```ocaml
len : bitstring -> int
```
computes the length of a bitstring.

```ocaml
countZ : bitstring -> int
countU : bitstring -> int
```
count the number of 0s and of 1s in a bitstring.

```ocaml
concat : bitstring -> bitstring -> bitstring
```
concatenates two bitstrings.

```ocaml
equals : bitstring -> bitstring -> bool
```
checks if two bitstrings are equal.

```ocaml
tl : bitstring -> bitstring
```
computes the tail of a bitstring;
For instance:
```ocaml
tl (Z(U(Z(U (Z E)))))
- : bitstring = U (Z (U (Z E)))

tl E
- : bitstring = E
```

```ocaml
prefix : bitstring -> bitstring -> bool
```
such that `prefix s1 s2` detects if `s1` is a prefix of `s2`.

```ocaml
substring : bitstring -> bitstring -> bool
```
such that `substring s1 s2` detects if `s1` is a substring of `s2`.
