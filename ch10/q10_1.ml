(* 昇順の整数リスト lst と 整数 n を受け取り、lst に　n を含めた昇順リスト を返す*)
(* insert: int list -> int -> int list *)

let rec insert lst n = match lst with 
    [] -> [n]
|   first :: rest -> 
if (n < first) then n :: lst
else first :: insert rest n


(*  test *)
let test1 = insert [] 5 = [5]
let test2 = insert [1] 5 = [1; 5]
let test3 = insert [5] 1 = [1; 5]
let test4 = insert [1] 1 = [1; 1]
let test5 = insert [1;3] 0 = [0; 1; 3]
let test6 = insert [1;3] 2 = [1; 2; 3]
let test7 = insert [1;3] 4 = [1; 3; 4]

(*
  insett [1;2;5] 4
= 1 :: insert [2;5] 4
= 1 :: (2 :: insert [5] 4)
= 1 :: (2 :: (4 :: 5))
= [1;2;4;5]
*)