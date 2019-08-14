(* 学生ひとり分のデータ(名前・点数・成績)を表す型 *)
type gakusei_t = {
    name:  string; (* 名前 *)
    point: int;    (* 点数 *)
    grade: string; (* 成績 *)
}

(* 学生のデータ例*)
let gakusei1   = {name = "asai"; point = 70; grade = "B"}
let gakusei1_2 = {name = "asai2"; point = 70; grade = "AB"}
let gakusei2   = {name = "yoshida"; point = 80; grade = "A"}
let gakusei3   = {name = "kaneko"; point = 85; grade = "A"}

(* pointに関して昇順のgakusei_tリスト ascLst と 学生 gakusei を受け取り
   ascLst に　gakusei を含めたpointに関する昇順リスト を返す*)
(* gakusei_insert: gakusei_t list -> gakusei_t -> gakusei_t list *)

let rec gakusei_insert lst ({name = n0; point = p0; grade = g0} as gakusei) = match lst with 
    [] -> [gakusei]
|   ({name = n; point = p; grade = g} as first) :: rest -> 
if (p0 < p) then gakusei :: lst
else first :: ( gakusei_insert rest gakusei)

(*  test *)
let gakuseiInsertTest1 = gakusei_insert [] gakusei1 = [gakusei1]
let gakuseiInsertTest2 = gakusei_insert [gakusei2] gakusei1 = [gakusei1; gakusei2]
let gakuseiInsertTest3 = gakusei_insert [gakusei1] gakusei2 = [gakusei1; gakusei2]
(* point が等しい場合は、後ろに追加される *)
let gakuseiInsertTest4 = gakusei_insert [gakusei1] gakusei1_2 = [gakusei1; gakusei1_2]
let gakuseiInsertTest5 = gakusei_insert [gakusei1_2] gakusei1 = [gakusei1_2; gakusei1]
let gakuseiInsertTest6 = gakusei_insert [gakusei1; gakusei2] gakusei3 = [gakusei1; gakusei2; gakusei3]
let gakuseiInsertTest7 = gakusei_insert [gakusei1; gakusei2] gakusei3 = [gakusei1; gakusei2; gakusei3]
let gakuseiInsertTest8 = gakusei_insert [gakusei1; gakusei3] gakusei2 = [gakusei1; gakusei2; gakusei3]
let gakuseiInsertTest8 = gakusei_insert [gakusei2; gakusei3] gakusei1 = [gakusei1; gakusei2; gakusei3]




(* gakusei_t のリスト lst を受け取り、pointの昇順でならべかえたリストを返す *)
(* gakusei_sort: gakuseit list ->  gakusei_t list*)

let rec gakusei_sort lst = match lst with
    [] -> []
|   ({name = n; point = p; grade = g} as first) :: rest -> gakusei_insert (ins_sort rest) first




(* test*)
 (* gakusei_t list型のデータ例*)

let lst1 = []
let lst2 = [ gakusei1 ]
let lst3 = [ gakusei1; gakusei2 ]
let lst4 = [ gakusei2; gakusei1 ]
let lst5 = [ gakusei2; gakusei1; gakusei3 ]

let test1 = gakusei_sort lst1 = []
let test2 = gakusei_sort lst2 = [ gakusei1 ]
let test3 = gakusei_sort lst3 = [ gakusei1; gakusei2 ]
let test4 = gakusei_sort lst4 = [ gakusei1; gakusei2 ]
let test5 = gakusei_sort lst5 = [ gakusei1; gakusei2; gakusei3 ] 
