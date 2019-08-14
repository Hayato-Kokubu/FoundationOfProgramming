(* 学生ひとり分のデータ(名前・点数・成績)を表す型 *)
type gakusei_t = {
    name:  string; (* 名前 *)
    point: int;    (* 点数 *)
    grade: string; (* 成績 *)
}

(* 学生のデータ例*)
let gakusei1        = {name = "asai"; point = 70; grade = "B"}
let gakusei1_2      = {name = "asai2"; point = 70; grade = "AB"}
let gakusei2        = {name = "yoshida"; point = 80; grade = "A"}
let gakusei3        = {name = "kaneko"; point = 85; grade = "A"}
let gakusei_default = {name = ""; point = 0; grade = ""}


(* 目的: 学生のリスト lst を受け取り、最高得点の学生を返す *)
(* gakusei_max: gakusei_t list -> gakusei_t *)

let rec gakusei_max lst = match lst with
    [] -> gakusei_default
|   ({name = n0; point = p0; grade = g0} as first) :: rest ->
    (* .表記でのフィールドアクセスはデザインレシピ違反 *)
    if p0 >= (gakusei_max rest).point  then first
                               else gakusei_max rest

(* test *)
let test1 = gakusei_max [] = gakusei_default
let test2 = gakusei_max [gakusei1] = gakusei1
let test3 = gakusei_max [gakusei1; gakusei2] = gakusei2
let test4 = gakusei_max [gakusei2; gakusei1] = gakusei2
let test5 = gakusei_max [gakusei2; gakusei1; gakusei3] = gakusei3
let test6 = gakusei_max [gakusei2; gakusei3; gakusei1] = gakusei3
let test7 = gakusei_max [gakusei3; gakusei2; gakusei1] = gakusei3
let test8 = gakusei_max [gakusei1; gakusei1_2] = gakusei1
let test9 = gakusei_max [gakusei1_2; gakusei1] = gakusei1_2
