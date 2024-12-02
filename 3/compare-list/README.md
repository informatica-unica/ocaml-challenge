# List comparison

Write an function with type:
```ocaml
compare_list : ('a -> 'a -> bool) -> 'a list -> 'a list -> bool
```
that performs the **lexicographic comparison** of the two input lists, defined as follows:
* `a1 :: l1` is smaller that `a2 :: l2` if `a1` is smaller than `a2`, or if they are equal and `l1` is smaller than `l2`;
* the empty list `[]` is smaller than any other list.

So, `compare_list cmp l1 l2` returns -1 if `l1` is smaller than `l2`, 0 if they equal and 1 if `l2` is smaller than `l1`. The first argument `cmp` is the comparison function that you use to compare the elements of the lists.

You are not allowed to use `List.length`!

The following assertions must hold:
```ocaml
assert (compare_list Int.compare [0] [1] <= 0);;
assert (compare_list Int.compare [0;1;0;0] [0;1;0;0] = 0);;
assert (compare_list Int.compare [0;1;0;0] [0;0;1;0] >= 0);;
assert (compare_list Int.compare [1;1;1;1] [1] >= 0);;
assert (compare_list Int.compare [1;1;2;3] [1;2;3] <= 0);;
assert (compare_list Int.compare [2;42;1] [3] <= 0);;
assert (compare_list Char.compare ['a';'b';'a';'c';'o'] ['a';'b';'e';'t';'e'] <= 0);;
```

