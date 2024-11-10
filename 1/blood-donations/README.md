# Blood donations

There are four blood groups, `A`, `B` and `AB` and `O`:

```ocaml
type blood_group = A | B | AB | O
```

A blood donation is possible only if the blood groups of the donor and the recipient are compatible.

The compatibility relation is illustrated in the directed graph below, where an edge from `x` to `y` indicates that a patient with blood group `x` can give blood to a patient with blood group `y`.

![image](graph.png)

Define a function `check_groups` that takes the blood groups of two different patients and checks if the first patient can donate blood to the second patient. The type must be:

```ocaml
check_groups : blood_group -> blood_group -> bool
```

For example:

```ocaml
assert (check_groups O AB = true);;
assert (check_groups A B = false);;
```