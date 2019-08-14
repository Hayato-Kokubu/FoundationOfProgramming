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


(* nameに関して昇順のperson_tリスト ascLst と  person を受け取り
   ascLst person を含めたnameに関する昇順リスト を返す*)
(* person_insert: person_t list -> person_t -> person_t list *)

let rec person_insert lst ({name = n0; height = h0; weight = w0; birthday = btd0; bloodType = bt0} as person) = match lst with 
    [] -> [person]
|   ({name = n; height = h; weight = w; birthday = btd; bloodType = bt} as first) :: rest -> 
if (n0 < n) then person :: lst
else first :: ( person_insert rest person)

let personInsertTest1 = person_insert [] person1 = [person1]
let personInsertTest2 = person_insert [person2] person1 = [person1; person2]
let personInsertTest3 = person_insert [person1] person2 = [person1; person2]
(* point が等しい場合は、後ろに追加される *)
let personInsertTest4 = person_insert [person1] person1_2 = [person1; person1_2]
let personInsertTest5 = person_insert [person1_2] person1 = [person1_2; person1]
let personInsertTest6 = person_insert [person1; person2] person3 = [person1; person2; person3]
let personInsertTest7 = person_insert [person1; person2] person3 = [person1; person2; person3]
let personInsertTest8 = person_insert [person1; person3] person2 = [person1; person2; person3]




(* 目的: person_t のリストを受け取り、名前の昇順にソーとしたリストを返す *)
(* person_sort: person_t list -> person_t list *)

let rec person_sort lst = match lst with 
    [] -> []
|   ({name = n; height = h; weight = w; birthday = btd; bloodType = bt} as first) :: rest -> person_insert (person_sort rest) first


(*  test *)
let person_sort_test1 = person_sort [] = []
let person_sort_test2 = person_sort [person1] = [person1]
let person_sort_test3 = person_sort [person1; person2] = [person1; person2]
let person_sort_test4 = person_sort [person2; person1] = [person1; person2]
let person_sort_test5 = person_sort [person2; person1] = [person1; person2]
let person_sort_test6 = person_sort [person1; person1_2] = [person1_2; person1]
let person_sort_test7 = person_sort [person1_2; person1] = [person1; person1_2]
let person_sort_test8 = person_sort [person2; person3; person1] = [person1; person2; person3]
let person_sort_test8 = person_sort [person3; person2; person1] = [person1; person2; person3]
