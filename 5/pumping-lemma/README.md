# The return of the Pumping Lemma

Write a function with the following type:
```ocaml
val pump : int -> int -> int -> 'a list -> 'a list = <fun>
```
such that `pump k i j l` *pumps* for k times the subsequence of l starting
at index i (included) and ending at index j (excluded).
The first element of a list has index 0.

For instance:
```ocaml
# pump 0 2 5 [1;2;3;4;5;6;7];;
- : int list = [1; 2; 6; 7]

# pump 1 2 5 [1;2;3;4;5;6;7];;
- : int list = [1; 2; 3; 4; 5; 6; 7]

# pump 2 2 5 [1;2;3;4;5;6;7];;
- : int list = [1; 2; 3; 4; 5; 3; 4; 5; 6; 7]
```