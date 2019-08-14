(* 昇順の整数リスト lst と 整数 n を受け取り、lst に　n を含めた昇順リスト を返す*)
(* insert: int list -> int -> int list *)

let rec insert ascLst n = match ascLst with 
    [] -> [n]
|   first :: rest -> 
if (n < first) then n :: ascLst
else first :: insert rest n




(* 整数のリスト lst を与受けとり、 それらを昇順にならべかえる *)
(* ins_sort: int list -> int list *)

let rec ins_sort lst = match lst with 
    [] -> []
|   first :: rest -> insert (ins_sort rest) first

(* test *)
let test1 = ins_sort [] = []
let test2 = ins_sort [1] = [1]
let test3 = ins_sort [1;2] = [1;2]
let test4 = ins_sort [2;1] = [1;2]
let test5 = ins_sort [1;1] = [1;1]
let test6 = ins_sort [5;3;8;1;7;4] = [1;3;4;5;7;8]


(*
  ins_sort [5;3;8;1;7;4]
= insert ( ins_sort [3;8;1;7;4]                                                      ) 5
= insert ( insert ( ins_sort [8;1;7;4]                                           ) 3 ) 5
= insert ( insert ( insert ( ins_sort [1;7;4]                                ) 8 ) 3 ) 5
= insert ( insert ( insert ( insert (ins_sort [7;4]                      ) 1 ) 8 ) 3 ) 5
= insert ( insert ( insert ( insert (insert (ins_sort [4]            ) 7 ) 1 ) 8 ) 3 ) 5
= insert ( insert ( insert ( insert (insert (insert (ins_sort [] ) 4 ) 7 ) 1 ) 8 ) 3 ) 5
= insert ( insert ( insert ( insert (insert (insert []             4 ) 7 ) 1 ) 8 ) 3 ) 5
= insert ( insert ( insert ( insert (insert [4]                        7 ) 1 ) 8 ) 3 ) 5
= insert ( insert ( insert ( insert [4;7]                                  1 ) 8 ) 3 ) 5
= insert ( insert ( insert [1;4;7]                                             8 ) 3 ) 5
= insert ( insert [1;4;7;8]                                                        3 ) 5
= insert [1;3;4;7;8]                                                                   5
= [1;3;4;5;7;8]
 *)
