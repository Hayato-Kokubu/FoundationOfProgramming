(* 実行時エラー *)
3 / 0 ;;

(* 論理的なエラー *)
(* 面積を求めたいのに円周の長さを求めてしまっている*)
let menseki r = 2. *. pi * r ;;
menseki 10. ;;
