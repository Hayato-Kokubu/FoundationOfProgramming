(*
 int list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

(* 目的: 整数のリスト lst を受け取り、その長さを求める *)
(* length: int list -> int *)

let length lst = match lst with 
    [] -> 0
|   first :: rest -> 0 (* length rest *)

(* test *)
let length_test1 =  length []       = 0
let length_test2 =  length [0]      = 1
let length_test3 =  length [1]      = 1
let length_test4 =  length [1;0]    = 2
let length_test4 =  length [2;-1;3] = 3
