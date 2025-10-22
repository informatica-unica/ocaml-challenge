# Personal data

Consider a product type `person` that stores the following information:
- the person's name (a string),
- their age (an integer),
- and optionally, an email address.

```ocaml
type person = Person of (string * int * string option);;
```

Write a function:
```ocaml
make_person : string -> int -> string option -> person
```
that constructs a `person` value from these three pieces of information. The function must fail if the age does not fall within the range [0,150].

Write a function:
```ocaml
get_email : person -> string option
```
that extracts the email address from a person (if any).

Write a function:
```ocaml
can_send_adult_email : person -> bool
```
that returns true if the person is 18 years or older and has an email address, and false otherwise.

Here are some unit tests:
```ocaml
let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;
```

Now, redo the exercise by using [record types](https://cs3110.github.io/textbook/chapters/data/records_tuples.html) instead of product types:
```ocaml
type person = {
  name : string;
  age : int;
  email : string option;
}
```

Here is the minimal background that you need to use record types.
A record type allows us to group several values together under named fields.
It is similar to a tuple, but each component has a name, which makes the code clearer.

We define a record type with the `type` keyword, followed by the list of fields and their types inside braces:
```ocaml
type book = {
  title : string;
  pages : int;
}
```

To create a record, we write the field names and their values:
```ocaml
let b = { title = "The art of computer programming"; pages = 665 }
```
We can access the fields using the dot notation:
```ocaml
b.title     (* returns "The art of computer programming" *)
b.pages     (* returns 665 *)
```
