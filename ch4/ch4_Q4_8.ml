(* 目的: 鶴と亀の合計 atama と 足の数の合計 ashi が与えられたら鶴の数を返す *)
(* tsurukame : int -> int -> int *)

let tsurukame atama ashi = (4 * atama - ashi) / 2

(* テスト *)
let test01_01 = tsurukame 2 6   =  1
let test00_01 = tsurukame 0 0   =  0
let test01_00 = tsurukame 1 2   =  1
let test01_00 = tsurukame 1 4   =  0
let test03_05 = tsurukame 10 34 =  3
