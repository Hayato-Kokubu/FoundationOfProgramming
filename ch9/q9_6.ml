(*
 int list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

(* 目的: 文字列のリスト lst を受け取り、要素を順番に結合した文字列を返す *)
(* concat: string list -> string  *)

let rec concat lst = match lst with 
    [] -> ""
|   first :: rest -> "" (* concat rest *)

(* test *)
let concatTest1 = concat [] = ""
let concatTest2 = concat ["春"] = "春"
let concatTest3 = concat ["春”; ”夏"] = "春夏"
let concatTest4 = concat ["春”; ”夏"; "秋”; ”冬"] = "春夏秋冬"
