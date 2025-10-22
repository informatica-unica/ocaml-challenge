# Point

Define a type `point` representing a point in the plane with two coordinates `x` and `y`, both of type `float`.

Then, write a function:
```ocaml
distance_from_origin : point -> float
```
that returns the distance of a point from the origin. You may need to use some functions from the [Float](https://ocaml.org/manual/4.08/libref/Float.html) library.

Then, define two types: 
- a tagged union type `color` with constructors `Red`, `Green`, and `Blue`;
- a product type `colored_point` combining a point and a color.

Write a function:
```ocaml
same_color : colored_point -> colored_point -> bool
```
that returns true if the two points have the same color.

Write unit tests for your functions, using the `assert` statement.
