(*
 int list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

(* *)

type person_t = {
    name:       string; (* 名前　*)
    height:     float; (* 身長 *)
    weight:     float; (* 体重 *)
    birthday:   string; (* 誕生日 *)
    bloodType:  string (* 血液型 *)
}

(*
 int list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

(* 目的: person_tのリスト lst を受け取り、血液型が "A" である人数を返す *)
(* count_bloodType_A : person_t list -> string  *)

let rec count_bloodType_A lst = match lst with 
    [] -> 0
|   ( {name = n; height = h; weight = w; birthday = bd; bloodType = bt} as first) :: rest -> 
    (if bt = "A" then 1 else 0 ) + count_bloodType_A rest

(* テスト *)
let lst1 = []
let lst2 = [
    {name = "asai"; height = 1.5; weight = 50.0; birthday = "19901010"; bloodType = "O"}
    ]
let lst3 = [
    {name = "asami"; height = 1.3; weight = 52.0; birthday = "19901111"; bloodType = "A"};
    {name = "asai"; height = 1.5; weight = 50.0; birthday = "19901010"; bloodType = "O"}
    ]
let lst4 = [
    {name = "asami"; height = 1.3; weight = 52.0; birthday = "19901111"; bloodType = "A"};
    {name = "asai"; height = 1.5; weight = 50.0; birthday = "19901010"; bloodType = "O"};
    {name = "asai"; height = 1.8; weight = 60.0; birthday = "19901110"; bloodType = "A"};
    ]

let test1 = count_bloodType_A lst1 = 0
let test2 = count_bloodType_A lst2 = 0
let test3 = count_bloodType_A lst3 = 1
let test4 = count_bloodType_A lst4 = 2
