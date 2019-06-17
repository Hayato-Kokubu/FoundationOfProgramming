(* 2次方程式 a * x^2 + b * x + c の 係数 a,b,c を受け取り、判別式を返す関数 hanbetsushiki *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c



(* 二次方程式 a * x^2 + b * x + c の係数 a,b,c を受け取り、虚数解を持つかどうかを判定する関数 kyosuukai *)
(* kyosuukai: float -> float -> float -> bool *)

let kyosuukai a b c = if(hanbetsushiki a b c < 0.0) then true
                      else false

(* こっちの方がいいのでは？
let kyosuukai a b c = hanbetsushiki a b c < 0.0
*)


(*テスト*)
let test1 = kyosuukai 1.0 0.0 (-1.0) = false
let test2 = kyosuukai 1.0 2.0 1.0    = false
let test3 = kyosuukai 1.0 0.0 1.0    = true
