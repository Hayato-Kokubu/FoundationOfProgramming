

(* 目的: 受け取ったint のリストの最大値を返す*)
(* minimum: int list -> int *)

let rec maximum lst = match lst with
    [] -> min_int
|   first :: rest -> 
      let max_rest = maximum rest in 
        if first < max_rest then max_rest else first

(* test *)
let maximum_test1 = maximum [] = min_int
let maximum_test2 = maximum [1] = 1
let maximum_test3 = maximum [1;2] = 2
let maximum_test4 = maximum [2;1] = 2
let maximum_test4 = maximum [3;2;6;4;1;8] = 8 

(* personT型 *)
type person_t = {
    name:      string;   (*名前   *)
    height:    int;      (*身長 m *)
    weight:    float;    (*体重 kg *)
    birthday:  string;   (*誕生日  *)
    bloodType: string;   (*血液型 A,B,O,AB のどれか *)
}

let person1 = {name = "Alice"; height = 160; weight = 50.0; birthday = "2000/01/01"; bloodType = "A"}
let person1_2 = {name = "Alice"; height = 180; weight = 60.0; birthday = "2010/01/01"; bloodType = "AB"}
let person2 = {name = "Bob"; height = 170; weight = 60.0; birthday = "1995/07/07"; bloodType = "AB"}
let person3 = {name = "Charlie"; height = 180; weight = 70.0; birthday = "1990/02/01"; bloodType = "O"}

(* 目的: person_t のリスト lst を受け取り,各血液型の人数を集計する *)
(* summarizeBloodType: person_t list -> (int, int, int, int) *)

let rec summarizeBloodType lst = match lst with
    [] -> (0,0,0,0)
|   ({name = n0; height = h0; weight = w0; birthday = bd0; bloodType = bt0} as first) :: rest ->
        let (a,b,o,ab) = summarizeBloodType rest in
            match bt0 with
            "A"  -> (a + 1,b    ,o    ,ab    )
|           "B"  -> (a    ,b + 1,o    ,ab    )
|           "O"  -> (a    ,b    ,o + 1,ab    )
|           "AB" -> (a    ,b    ,o    ,ab + 1)


(* 目的: person_t のリスト lst を受け取り,最も多い血液型を返す *)
(* maxBloodType: person_t list -> string *)

let rec maxBloodType lst = 
    let (a,b,o,ab) = summarizeBloodType lst in 
        let x = maximum [a;b;o;ab] in
            if x = 0 then ""
            else if x = a then "A"
            else if x = b then "B"
            else if x = o then "O"
            else "AB"


(* test *)
let test1 = maxBloodType [] = ""
let test2 = maxBloodType [person1] = "A"
let test3 = maxBloodType [person1; person1_2] = "A"
let test4 = maxBloodType [person1; person1_2; person2; person3] = "AB"
