(* 目的: 与えられた２つのリスト lst1 とlst2 の長さが 等しいかどうかを判定する *)
(* equal_length: int list -> int list -> boolean *)

let rec equal_length lst1 lst2 = match (lst1 , lst2) with
    (first1 :: rest1, first2 :: rest2) -> equal_length rest1 rest2
|   ([], []) -> true
|   _        -> false 


(* test *)
let equal_lengthTest1 = equal_length [] [] = true
let equal_lengthTest2 = equal_length [1] [] = false
let equal_lengthTest3 = equal_length [] [2] = false
let equal_lengthTest4 = equal_length [1] [2] = true
let equal_lengthTest5 = equal_length [2] [1] = true
let equal_lengthTest6 = equal_length [1] [1] = true
let equal_lengthTest7 = equal_length [2;3;6] [1;4] = false
let equal_lengthTest7 = equal_length [2;3] [1;4;4] = false
let equal_lengthTest7 = equal_length [2;3;6] [1;4;4] = true
