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
let person3 = {name = "Charlie"; height = 180; weight = 70.0; birthday = "1990/02/01"; bloodType = "0"}

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

(* test *)
let test1 = summarizeBloodType [] =  (0,0,0,0)
let test2 = summarizeBloodType [person1] = (1,0,0,0)
let test3 = summarizeBloodType [person1; person2] = (1,0,0,1)
let test4 = summarizeBloodType [person1; person2; person1_2] = (1,0,0,2)

