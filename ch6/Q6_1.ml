(* (1) *)
let square x = x * x;;
square 3.0 ;;
(* squre はint -> int なのに、引数としてfloatを渡している *)

(* (2) *)
let circle = 2. *. pi *. r ;;
circle 2. ;;
(* circle 中でr が定義されていない *)
(* そもそもpiも定義されてない  デフォルトで用意してくれないのか。。。 *)

(* (3) *)
let TV bangumi youbi = bangumi ^ "は" ^ youbi ^ "に放映です" ;;
(* TV が命名規則に反している(が、コンパイラはyoubiがいけないと言ってくる)  *)
