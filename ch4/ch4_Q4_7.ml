(* 目的: 鶴の数 tsuru と 亀の数 kame が与えられたら足の合計を返す *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi tsuru kame = 2 * tsuru + 4 * kame
(* テスト *)
let test01_01 = tsurukame_no_ashi 1 1 =  6
let test00_01 = tsurukame_no_ashi 0 1 =  4
let test01_00 = tsurukame_no_ashi 1 0 =  2
let test03_05 = tsurukame_no_ashi 3 5 = 26
