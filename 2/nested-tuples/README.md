# Nested tuples

Consider a tuple `(name, (written, oral))` representing a student's exam results, where:
- `name` is a string (the student's name),
- `written` and `oral` are integers (the grades of the written and oral parts of the exam).

Write a function
```ocaml
total_score : (string * (int * int)) -> int
```
that returns the sum of the written and oral grades.

Write a function:
```ocaml
passed : (string * (int * int)) -> bool
```
that returns true if both grades are at least 18, and false otherwise.

Write a function:
```ocaml
string_of_result : (string * (int * int)) -> string
```
that returns a string of the form "Alice passed with total 45" or "Bob did not pass", depending on the student’s grades.
You can use the string concatenation operator `^` in this function. For example:
```ocaml
"Hello, " ^ "world!" ;;
- : string = "Hello, world!"
```

Write a function:
```ocaml
merge : (string * (int * int)) -> (string * (int * int)) -> (string * (int * int))
```
that, given two results of the same student, returns a new result with the maximum grades between the two results.
For example:
```
merge ("Anna",(7,15)) ("Anna",(4,18));;
- (string * (int * int)) = ("Anna",(7,18))
```
The function must fail if the two inputs are not results of the same student.

Write unit tests for your functions, using the `assert` statement.
