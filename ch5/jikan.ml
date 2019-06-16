(* 時間 h を受け取ったら、"午前" か "午後" かを返す関数 jikan *)
(* jikan: int -> string *)

let jikan h = if( h < 12)  then "午前"
                           else "午後"

(*テスト*)
let test1 = ( jikan 1 = "午前")
let test2 = ( jikan 13 = "午後")
let test3 = ( jikan 12 = "午後")
let test4 = ( jikan  0 = "午前")
