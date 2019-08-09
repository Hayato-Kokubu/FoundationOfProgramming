(*
 int list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

(* 目的: 整数のリスト lst を受け取り、偶数のみ抽出したリストを返す *)
(* even: int list -> int list  *)

let rec even lst = match lst with 
    [] -> []
|   first :: rest -> 
        if first mod 2 = 0 then first :: even rest
                           else even rest

(* test *)
let evenTest1 = even []    = []
let evenTest2 = even [0]   = [0]
let evenTest3 = even [1]   = []
let evenTest4 = even [1;2] = [2]
let evenTest5 = even [2;1] = [2]
let evenTest6 = even [1;3] = []
let evenTest6 = even [2;4] = [2;4]


(* 
  even [0;1;2;3]
= even 0 :: even [1;2;3]
= even 0 ::(even [2;3]) 
= even 0 ::(2 :: even [3])
= even 0 ::(2 :: even [])
= even 0 ::(2 :: [])
= [0;2]
*)