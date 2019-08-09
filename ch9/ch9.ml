let empty = []
let list = 1::2::3::[]


let func l = match l with
    [] -> 0
|   first :: rest -> first


let res0 = func empty
let res1 = func list

(*
 int list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

(* 目的: 受け取ったリスト lst に  0 が含まれているかどうかを調べる *)
(* contain_zero: int list -> bool *)

let rec contain_zero lst = match lst with
    [] -> false 
|   first :: rest ->  if first = 0 then true 
                                   else contain_zero rest


(* test *)
let test1 = contain_zero [] = false
let test2 = contain_zero [1; 2] = false
let test3 = contain_zero [0; 2] = true
let test4 = contain_zero [1;2;3;0;5;6;7] = true
let test5 = contain_zero [1;2;3;4;5;6;7] = false


