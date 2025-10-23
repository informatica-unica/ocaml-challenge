# Point

Define a type `point` representing a point in the plane with two coordinates `x` and `y`, both of type `float`.

Write a function:
```ocaml
translate : point -> float -> float -> point
```
that returns the point obtained by adding the given offsets to the coordinates.

Write a function:
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

Write a function:
```ocaml
recolor : colored_point -> color -> colored_point
```
that returns a new colored point with the same coordinates but a new color.

Write unit tests for your functions, using the `assert` statement.
