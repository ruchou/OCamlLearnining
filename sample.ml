
let rec factorial n =
    if n == 0 then 1
    else
        n * factorial (n-1) ;;

let res = factorial 10 ;;

print_int res ;;

let print_hello () = print_endline "Hello World" ;;
print_hello () ;;


let add x y = x + y ;;
let inc_2 = add 2;;
print_int (inc_2 3)

let rec
    is_even = function
    | 0 -> true
    | n -> is_odd (n-1)
    and
    is_odd = function
    | 0 -> false
    | n -> is_even(n-1)
    ;;

let my_lambda = fun x -> x + 1 ;;

let my_list = [1;2;3] ;;

let my_bad_list = [1,2,3,4] ;;

let my_arrary = [|2;3;4;5|];;
my_arrary.(0) = 90 ;;

let ocaml = (String.make 1 'o') ^ "Caml" ;;

type ml = OCaml | StandaardMl;;
let lang = OCaml

type 'a list_of_lists = 'a list list ;;


let is_zero x =
    match x with
    | 0 -> true
    | _ -> false
    ;;

let non_zero = function
    | 0 -> false
    | _ -> true
    ;;

let abs x = match x with
    | x when x < 0 -> -x
    | _ -> x
    ;;


type animal = Dog of string | Cat of string ;;

let say x = match x with
    | Dog x -> x ^ "woof"
    | Cat x -> x ^ "meow"
    ;;
let celine = Cat "Celine" ;;
say celine ;;


let rec sum_list l =
    match l with
    | [] -> 0
    | x::xs -> x + (sum_list xs)
    ;;

