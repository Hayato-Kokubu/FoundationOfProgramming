(* 2次方程式 a * x^2 + b * x + c の 係数 a,b,c を受け取り、判別式を返す関数 hanbetsushiki *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c



(* 二次方程式 a * x^2 + b * x + c の係数 a,b,c を受け取り、異なる実数解の個数を返す関数 kai_no_kosuu *)
(* kai_no_kosuu: float -> float -> float -> Int *)

let kai_no_kosuu a b c = -1

(*テスト*)
let test1 = kai_no_kosuu 1.0 0.0 (-1.0) = 2
let test2 = kai_no_kosuu 1.0 2.0 1.0    = 1
let test3 = kai_no_kosuu 1.0 0.0 1.0    = 0
