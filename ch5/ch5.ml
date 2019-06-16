優遇時給 太っ腹

let yugu_jikyu = 980 ;;

正しい例
if 1 < 2 then 3 else 4;;
if 3 + 4 < 5 then 1 else 2 ;;

ダメな例(A満たさず)
if 1 then 2 else 3;;

ダメな例(B満たさず)
if 3 + 4 > 5 1 else "2"  (* 文字列との比較 *)


Q.5.1
(1) if 2 < 1 then 3 else 4
(2) if "true" then 3.14 else 2.72
(3) if "a" = "b" then false else true
(4) if true < false  then 1 else "2"
(5) if not (3 = 4) then 1 < 2 else 1 > 2
