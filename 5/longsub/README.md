# Longest subsequence

Write a function with the following type:
```ocaml
val longsub : 'a list -> ('a * int) option = <fun>
```
such that ``longsub l`` evaluates to `None` if the list l is empty,
otherwise it evaluates to the pair `Some(x,n)` if the longest subsequence
of equal elements in l has length n, and contains the element x.

For example:
```ocaml
longsub [1;1;3;3];;
- : (int * int) option = Some (1, 2)

longsub [1;2;2;2;1;1];;
- : (int * int) option = Some (2, 3)

longsub [1;1;2;2;2;1;1;1;1];;
- : (int * int) option = Some (1, 4)
```
