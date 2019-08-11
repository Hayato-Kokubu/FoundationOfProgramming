let empty = []
let list = 1::2::3::[]


let func l = match l with
    [] -> 0
|   first :: rest -> first


let res0 = func empty
let res1 = func list

(*
 int list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

(* 目的: 受け取ったリスト lst に  0 が含まれているかどうかを調べる *)
(* contain_zero: int list -> bool *)

let rec contain_zero lst = match lst with
    [] -> false 
|   first :: rest ->  if first = 0 then true 
                                   else contain_zero rest


(* test *)
let test1 = contain_zero [] = false
let test2 = contain_zero [1; 2] = false
let test3 = contain_zero [0; 2] = true
let test4 = contain_zero [1;2;3;0;5;6;7] = true
let test5 = contain_zero [1;2;3;4;5;6;7] = false


(*
 int list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

(* 目的: 受け取った整数リスト lst の要素の和を求める *)
(* sum: int list -> int *)

let rec sum lst = match lst with 
    [] -> 0
|   first :: rest -> first + sum rest

(* テスト *)
let sum_test1 = sum [] = 0
let sum_test2 = sum [2] = 2
let sum_test3 = sum [1;3] = 4
let sum_test4 = sum [1;2;3;4;5;6;7;8;9;10] = 55


(* 学生ひとり分のデータ(名前・点数・成績)を表す型 *)

type gakusei_t = {
    name:  string; (* 名前 *)
    point: int;    (* 点数 *)
    grade: string; (* 成績 *)
}

(* gakusei_t list は
 - []               空リスト または
 - first :: rest    最初の要素がfirst , 残りのリストがrest
 という形
 *)

 (* gakusei_t list型のデータ例*)

let lst1 = []
let lst2 = [
    {name = "asai"; point = 70; grade = "B"}]
let lst3 = [
        {name = "asai"; point = 70; grade = "B"};
        {name = "kaneko"; point = 85; grade = "A"}]
let lst4 = [
        {name = "yoshida"; point = 80; grade = "A"};
        {name = "asai"; point = 70; grade = "B"};
        {name = "kaneko"; point = 85; grade = "A"}]


(* 目的: 学生リスト lst のうち、成績が "A" の人の数を返す*)
(* count_A: gakusei_t list -> int *)

let rec count_A lst = match lst with
    [] -> 0
|   ({name = n; point = p; grade = g} as first) :: rest -> 
        ( if g = "A" then 1 else 0 ) + count_A rest

(* テスト *)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 0
let test3 = count_A lst3 = 1
let test4 = count_A lst4 = 2
