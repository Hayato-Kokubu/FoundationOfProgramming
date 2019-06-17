(* 2次方程式 a * x^2 + b * x + c の 係数 a,b,c を受け取り、判別式を返す関数 hanbetsushiki *)
(* hanbetsushiki: float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

(* テスト *)
(* let test1 = hanbetsushiki 1.0 0.0 (-1.0) = 4.0 *)
let test1 = hanbetsushiki 1.0 0.0 (-1.0) = 4.0
let test2 = hanbetsushiki 1.0 2.0 1.0    = 0.0
let test3 = hanbetsushiki 1.0 0.0 1.0    = (-4.0)
