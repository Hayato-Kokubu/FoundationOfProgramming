let abs_value x =
  if x >= 0.0 then x
              else -. x


(* 2次方程式 a * x^2 + b * x + c の 係数 a,b,c を受け取り、判別式を返す関数 hanbetsushiki *)
(* hanbetsushiki: float -> float -> float -> float *)
let hanbetsushiki a b c = 0.0

(* テスト *)
(* let test1 = hanbetsushiki 1.0 0.0 (-1.0) = 4.0 *)
let test1 = abs_value( hanbetsushiki 1.0 0.0 (-1.0) -. 4.0 ) <= 0.000001
let test2 = abs_value( hanbetsushiki 1.0 2.0 1.0 -. 0.0 ) <= 0.000001
let test3 = abs_value( hanbetsushiki 1.0 0.0 1.0 -. (-4.0) ) <= 0.000001
