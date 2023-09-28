# Binary search trees

Consider the following type to represent (labelled) binary trees:
```ocaml
type 'a btree = Empty | Node of 'a * 'a btree * 'a btree;;
```

A **binary search tree** is a binary tree where the label of each internal node
is (strictly) greater than the labels of its left subtree, 
and (strictly) less than those of its right subtree.

For instance:
```ocaml
Node(7,
  Node(4,
    Node(1,Empty,Empty),
    Node(5,Empty,Empty)),
  Node(10,Empty,Empty))
```
is a binary search tree.

Write a function with the following type:
```ocaml
val is_bstree : 'a btree -> ('a -> 'a -> int) -> bool = <fun>
```
such that `is_bstree t comp` is true iff t is a binary search tree
with respect to the comparison function `comp`.
Recall that, in Ocaml, a comparison between two elements
must return 0 if the elements are equal, a positive integer
if the first is greater, and a negative integer if the first is smaller.
For instance, the built-in polymorphic function [compare](https://v2.ocaml.org/releases/4.02/htmlman/libref/Pervasives.html) 
implements a default comparison.

Then, write a function:
```ocaml
val search : 'a btree -> ('b -> 'a -> int) -> 'b -> bool = <fun>
```
such that `search t comp x` evaluates to true iff the label x belongs to the binary search tree.
