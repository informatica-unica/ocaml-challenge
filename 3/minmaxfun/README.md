# Min and max of a function

Recall the built-in option type:
```ocaml
type 'a option = Some of 'a | None
```

Write a function with the following type:
```ocaml
minmaxfun : (int -> 'a) -> int -> int -> ('a * 'a) option
```
such that ``minmaxfun f a b`` computes the minimum and the maximum
of f in the range [a,b].
If the range is empty, then the function evaluates to ``None``.
