(* personT型 *)
type person_t = {
    height:  int;      (*身長 m *)
    weight:  float;    (*体重 kg *)
    birthday: string;   (*誕生日  *)
    bloodType: string; (*血液型 A,B,O,AB のどれか *)
}

let person1 = {height = 160; weight = 50.0; birthday = "2000/01/01"; bloodType = "A"}
let person2 = {height = 170; weight = 60.0; birthday = "1995/07/07"; bloodType = "AB"}
let person3 = {height = 180; weight = 70.0; birthday = "1990/02/01"; bloodType = "0"}

let personList = person1 :: person2 :: person3 :: []
(* [person1: person2: person3:] *)