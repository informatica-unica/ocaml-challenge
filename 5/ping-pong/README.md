# Ping pong

A list of elements is **alternating** if:
- two consecutive elements are not equal;
- for each sublist [a;b;c] of three elements, the ordering relation between a and b is the inverse of the one between b and c.

For instance consider the following lists:
```ocaml
let l0 = [1;5;2;5;1;6];;
let l1 = [1;5;2;5;4;3];;
let l2 = [1;5;2;3;2;4];;
let l3 = [3;1;4;2;5;3];;
```
Here, l0, l2 and l3 are alternating, while l1 is not.

A list of integers is **ping pong** if there is some central element
(the "net") around which the others alternate, without touching the net.

For instance, the list l0 above is ping pong (with net 3 or 4), while the others are not.
In particular,
l1 is not alternating;
in l2, the net should be between 2 and 3,
but there are no integers within that interval;
in l3, the net is shifting towards the right: it is 2 at the first step,
3 at the second step, and 4 at the third.

Write functions to detect if a list is alternating and ping pong, with the following types:
```ocaml
val alt : 'a list -> bool = <fun>
val ping_pong : int list -> bool = <fun>
```
