let ( -?-> ) (o : 'a option) (next : 'a -> 'b option) : 'b option =
  match o with
  | None -> None
  | Some x -> next x
;;

assert ((
  Some 1 -?-> fun x ->
  Some 2 -?-> fun y ->
  Some 3 -?-> fun z ->
  Some (x + y + z)) = Some 6);;

assert ((
  Some 1 -?-> fun x ->
  None -?-> fun y ->
  Some 3 -?-> fun z ->
  Some (x + y + z)) = None);;

let first_third_fifth (xs : 'a list) : ('a * 'a * 'a) option =
  List.nth_opt xs 0 -?-> fun x0 ->
  List.nth_opt xs 2 -?-> fun x2 ->
  List.nth_opt xs 4 -?-> fun x4 ->
  Some (x0, x2, x4)
  
  