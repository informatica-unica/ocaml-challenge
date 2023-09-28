# List crush

A list is **crushed** when it has not adjacent equal elements.
When there are two or more identical adjacent elements, they can be crushed,
making them disappear from the list.

For instance, consider the list:
```ocaml
[1;1;2;1;1;3;2;1;1;1;3;3;1;1;2;3];;
```
There are five subsequences of equal adjacent elements: [1;1], [1;1], [1;1;1], [3;3], and [1;1].
Crushing them, we obtain the list:
```ocaml
[2;3;2;2;3];;
```
Now, there are two adjacent 2 that we can crush, obtaining:
```ocaml
[2;3;3];;
```
Finally, we can crush the two adjacent 3, obtaining the crushed list [2].

Write a function
```ocaml
val crush : 'a list -> 'a list = <fun>
```
that crushes a list.
