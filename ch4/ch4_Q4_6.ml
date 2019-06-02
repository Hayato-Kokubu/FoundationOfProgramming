(* 目的: 鶴の数 tsuru が与えられたら足の本数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi tsuru = 2 * tsuru
(* テスト *)
let test01 = tsuru_no_ashi  1 =  2
let test02 = tsuru_no_ashi  2 =  4
let test10 = tsuru_no_ashi 10 = 20
let test00 = tsuru_no_ashi  0 =  0


(* 目的: 亀の数 kame が与えられたら足の本数を返す *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi kame = 4 * kame
(* テスト *)
let test01 = kame_no_ashi  1 =  4
let test02 = kame_no_ashi  2 =  8
let test10 = kame_no_ashi 10 = 40
let test00 = kame_no_ashi  0 =  0
