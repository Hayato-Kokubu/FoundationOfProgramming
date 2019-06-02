let jikyu = 950 ;;
let kihonkyu = 100;;


(* 関数定義 let name index1, index2, ... = exer *)
let f x = 3 * x ;;

f 4 ;;

let g x y = x * x + y * y - 4 ;;


g 3 2 ;;

let kyuyo x = kihonkyu + x * jikyu ;;

kyuyo 25 + kyuyo 28 + kyoyo 31 ;;



Q.4.1
let baito_kyuyo nen jikan = (850 + 100 * nen) * jikan


Q.4.2
let jikoshokai namae = "私は" ^ namae ^ "です。" ;;


Q.4.3
let hyojum_taiju m = m ** 2.0 *. 22.0

Q.4.4
let bmi m kg = m /. m ** 2.0

Q.4.5


(* int -> int 型 *)
let f x = 3 * x ;;

(* int -> int -> int 型 *)
let g x y = x * x + y * y - 4 ;;

(* A -> B -> C の解釈 *)
(* A -> (B -> C) : A を受け取ると、関数が返る *)
(* (A -> B) -> C : 関数を入力として受け取り、 値を返す *)

(*関数の実行方法*)

let jikyu = 950;;
let kihonkyu = 100 ;;
let kyuyo x = kihonkyu + x * jikyu ;;

  kyuyo 25 + kyuyo 28 + kyuyo 31
= (kihonkyu + x * jikyu)|        + kyuyo 28 + kyuyo 31
                        |x = 25

= (kihonkyu + 25 * jikyu) + kyuyo 28 + kyuyo 31
= (変数の実行方法を参照)

(*デザインレシピ*)

(*
目的: 関数が何をするのかを書く
     input , output を決め、関数の型を定める
例: テストで確認できる
本体: やるだけ
テスト:  // テストファースト！
*)


Q4.6

(* 目的: 鶴の数 tsuru が与えられたら足の本数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi tsuru = 0
(* テスト *)
let test01 = tsuru_no_ashi  1 =  2
let test02 = tsuru_no_ashi  2 =  4
let test10 = tsuru_no_ashi 10 = 20
let test00 = tsuru_no_ashi  0 =  0
