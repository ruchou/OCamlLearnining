

let is_even x =
    if x mod 2 = 0
        then true
    else
        false
    ;;

let (x,y) = (1,"fjdskl");;

type point2d = {
    x : float;
    y : float;
};;
let p  = {
    x = 3.;
    y = 4.;
};;

let numbers = [| 1;2;3;4|];;
numbers.(1) <- 10;;

let my_sum list =
    let total = ref 0 in
    List.iter (fun x -> total := !total +x ) list ;
    !total
    ;;


let permute array =
    let len = Array.length array in
    for i = 0 to len -2 do
        let j = i + 1 + Random.int (len - i - 1) in
        let tmp = array.(i) in
        array.(i) <- array.(j) ;
        array.(j) <- tmp
    done
    ;;

let my_array = [|1;2;3;3;4;6;7;2|];;

open Core.Std

let rec read_and_acc accum =
    let line = In_channel.input_line In_channel.stdin in
    match line with
    | None -> accum
    | Some x -> read_and_acc (accum +. Float.of_string x);;

let () =
    printf "Total: %F\n" (read_and_accumulate 0.)













