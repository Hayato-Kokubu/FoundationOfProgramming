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
|   first :: rest -> [] (* even rest *)

(* test *)
let evenTest1 = even []    = []
let evenTest2 = even [0]   = [0]
let evenTest3 = even [1]   = []
let evenTest4 = even [1;2] = [2]
let evenTest5 = even [2;1] = [2]
let evenTest6 = even [1;3] = []
let evenTest6 = even [2;4] = [2;4]
