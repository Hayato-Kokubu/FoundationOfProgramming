(* add_to_each // 補助関数として作成 *) 

(* 受け取った要素 e を、受け取ったlst の要素 ( lst ) の先頭に追加する。 *)
(* add_to_each int -> int list list -> int list list *)

let rec add_to_each e lst = match lst with
    [] -> []
|   first :: rest -> (e :: first) :: add_to_each e rest

(* テスト *)

let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [ [2] ] = [ [1; 2] ]
let test3 = add_to_each 1 [ [2]; [2;3] ] = [[1; 2]; [1; 2 ; 3]]
let test4 = add_to_each 1 [[2]; [2; 3]; [2; 3; 4]] = [[1; 2]; [1; 2; 3]; [1; 2; 3; 4]]

(* 
  add_to_each 1 [[2]; [2; 3]; [2; 3; 4]]
= (1 :: [2]) :: add_to_each 1 [[2; 3]; [2; 3; 4]]
= (1 :: [2]) :: (1 :: [2; 3]) :: add_to_each 1 [[2; 3; 4]]
= (1 :: [2]) :: (1 :: [2; 3]) :: (1 :: [2; 3; 4]) :: add_to_each 1 []
= (1 :: [2]) :: (1 :: [2; 3]) :: (1 :: [2; 3; 4]) :: []
= [1;2] :: [1; 2; 3] :: [1; 2; 3; 4] :: []
= [[1;2] ; [1; 2; 3] ; [1; 2; 3; 4]]
*)

(* prefix *)

(* 与えられた list の 接頭語のリストを返す *)
(* prefix: int list -> int list list *)

let rec prefix lst = match lst with
    [] -> []
|   first :: rest -> [first] :: add_to_each first (prefix rest)

(* test *)
let prefixTest1 = prefix [] = []
let prefixTest2 = prefix [2] = [[2]]
let prefixTest3 = prefix [2;3] = [[2]; [2; 3]]
let prefixTest4 = prefix [2; 3; 4] = [[2]; [2; 3]; [2; 3; 4]]

(*
  prefix [2; 3; 4]
= [2] :: add_to_each 2 ( prefix [3 ; 4] )
= [2] :: add_to_each 2 ( [3] :: add_to_each 3 ( prefix [4] ) )
= [2] :: add_to_each 2 ( [3] :: add_to_each 3 ( [4] :: add_to_each 4 prefix[]) )
= [2] :: add_to_each 2 ( [3] :: add_to_each 3 ( [4] :: []) )
= [2] :: add_to_each 2 ( [3] :: add_to_each 3 [4] )
= [2] :: add_to_each 2 ( [3] :: [3 ; 4] )
= [2] :: add_to_each 2 ( [ [3] ; [3 ; 4] ] )
= [2] :: ( [ [2; 3] ; [2; 3 ; 4] ] )
= [ [2] ; [2; 3] ; [2; 3 ; 4] ]
*)

(* 目的: 受け取ったint のリストの最小値を返す*)
(* minimum: int list -> int *)

let rec minimum lst = match lst with
    [] -> max_int
|   first :: rest -> 
      let min_rest = minimum rest in 
        if first > min_rest then min_rest else first

(* test *)
let minimum_test1 = minimum [] = max_int
let minimum_test2 = minimum [1] = 1
let minimum_test3 = minimum [1;2] = 1
let minimum_test4 = minimum [2;1] = 1
let minimum_test4 = minimum [3;2;6;4;1;8] = 1 

let z = let x = 2 in x + x 

let z2 =
    let x = 3 in
      let y = 4 in
        x + y


(* 学生ひとり分のデータ(名前・点数・成績)を表す型 *)
type gakusei_t = {
    name:  string; (* 名前 *)
    point: int;    (* 点数 *)
    grade: string; (* 成績 *)
}

(* 学生のデータ例*)
let gakusei1        = {name = "asai"; point = 70; grade = "B"}
let gakusei1_2      = {name = "asai2"; point = 70; grade = "B"}
let gakusei2        = {name = "yoshida"; point = 80; grade = "A"}
let gakusei3        = {name = "kaneko"; point = 85; grade = "A"}
let gakusei4        = {name = "kaneko"; point = 85; grade = "C"}
let gakusei5        = {name = "kaneko"; point = 85; grade = "F"}

(* 目的: 学生のリスト lst を受け取り、各成績の人数を集計する *)
(* summarize: gakusei_t list -> int * int * int * int *)

let rec summarize lst = match lst with 
  [] -> (0,0,0,0)
| ({name = n0; point = p0; grade = g0} as first) :: rest -> 
  let (a,b,c,d) = summarize rest in
    match g0 with 
      "A" -> (a + 1,b    ,c    ,d    )
|     "B" -> (a    ,b + 1,c    ,d    )
|     "C" -> (a    ,b    ,c + 1,d    )
|     _   -> (a    ,b    ,c    ,d + 1)

(* test *)
let galisei_list1 = summarize [] = (0,0,0,0)
let galisei_list2 = summarize [gakusei1]  = (0,1,0,0)
let galisei_list3 = summarize [gakusei1; gakusei2]  = (1,1,0,0)
let galisei_list4 = summarize [gakusei2; gakusei1]  = (1,1,0,0)
let galisei_list5 = summarize [gakusei1; gakusei2; gakusei3]   = (2,1,0,0)
let galisei_list6 = summarize [gakusei1; gakusei2; gakusei3; gakusei4; gakusei5]   = (2,1,1,1)


(* 目的: 与えられた２つのリスト lst1 とlst2 を結合したリストを返す *)
(* append: int list -> int list -> int list *)

let x = []

let rec append lst1 lst2 = match lst1 with
  [] -> lst2
| first :: rest ->  first :: append rest lst2


(* test *)
let appendTest1 = append [] [] = []
let appendTest2 = append [1] [] = [1]
let appendTest3 = append [] [2] = [2]
let appendTest4 = append [1] [2] = [1; 2]
let appendTest5 = append [2] [1] = [2; 1]
let appendTest6 = append [2;4;6] [1;3] = [2; 4; 6; 1; 3]

