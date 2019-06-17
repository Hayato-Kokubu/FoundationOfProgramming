(* 身長 m, 体重 kg を受け取り、bmi値 を返す関数 bmi *)
let bmi m kg = kg /. m ** 2.0


(* 身長 m, 体重 kg を受け取り、これらによって求まるbmi値に応じて体型を返す関数 taikei *)
(* taikei: float -> float -> string *)

let taikei m kg = ""


(*テスト*)
let test1 = taikei 1.5 40.0 = "痩せ"
let test2 = taikei 1.5 45.0 = "標準"
let test3 = taikei 1.5 59.0 = "肥満"
let test4 = taikei 1.5 70.0 = "高度肥満"
