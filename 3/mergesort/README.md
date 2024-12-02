# Merge Sort

Let's implement the [merge sort](https://en.wikipedia.org/wiki/Merge_sort#) algorithm for integer lists in OCaml!

First, write a function `merge` that takes two
sorted lists and threads their elements together to form a new sorted list:
```ocaml
merge : int list -> int list -> int list
```

<details>

<summary><i>Hint (click to reveal)</i></summary>

You don't need to check that the two input lists are sorted (we haven't defined the sorting function yet!). Pattern match on both lists simultaneously and use recursion!

</details>
<br>

Next, define a function `halve` that splits a list in half and returns a pair containing the two halves:
```ocaml
halve : int list -> int list * int list
```
If the length of the input list is odd, `halve` puts the central element in the right half.

> [!TIP]
> Use the [knife](../knife/README.md) function from an earlier exercise.

Finally, using `merge` and `halve`, define `merge_sort`:
```ocaml
merge_sort : int list -> int list
```

Here are some unit tests on all three functions:

```ocaml
assert (merge [1;4;5] [2;3;6] = [1;2;3;4;5;6]);;
assert (merge [7] [2;3;6] = [2;3;6;7]);;
assert (merge [7] [] = [7]);;

assert (halve [5;1;3;8;-2;6] = ([5;1;3], [8;-2;6]));;
assert (halve [1;3] = ([1], [3]));;
assert (halve [5;1;3] = ([5], [1;3]));;

assert (merge_sort [5;1;3;8;-2;6] = [-2;1;3;5;6;8]);;
```