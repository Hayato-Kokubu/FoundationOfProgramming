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
