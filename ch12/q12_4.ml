(* 駅名の情報を格納するレコード型  *)  (*by q_8.5 *)

type ekimei_t = {
    kanji: string;
    kana: string;
    romaji: string;
    shozoku: string;
}
(* ekimei のデータサンプル *)
let yoyogiuehara       = {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}
let ikebukuroMaruouchi = {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}
let ikebukuroYurakucho = {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="有楽町線"}


(* 駅名情報の重複無し昇順のリスト distinctAscLst と 駅名情報 eki を受け取り、
   lst に　eki を含めた重複無し昇順リスト を返す*)
(* insert: ekimei_t list -> ekimei_t -> ekimei_t list *)

let rec insertEki distinctAscLst eki = match distinctAscLst with 
    [] -> [eki]
|   ({kanji = kanj0; kana = kana0; romaji = r0; shozoku= s0} as first) :: rest -> 
    match eki with {kanji = kanj; kana = kana; romaji = r; shozoku= s} ->
        if kana < kana0 then eki :: distinctAscLst
        else if kana = kana0 then eki :: rest (* distinctAscLst にすると、安定ソートにならない *)
        else first :: insertEki rest eki

(* test *)
let insertEkitest1 = insertEki [] yoyogiuehara = [yoyogiuehara]
let insertEkitest2 = insertEki [ikebukuroMaruouchi] yoyogiuehara = [ikebukuroMaruouchi; yoyogiuehara]
let insertEkitest3 = insertEki [yoyogiuehara] ikebukuroMaruouchi = [ikebukuroMaruouchi; yoyogiuehara]
(* seiretsu を安定ソートにするために、引数とリストの先頭で重複する要素がある場合は、引数の方を採用する*)
let insertEkitest4 = insertEki [ikebukuroMaruouchi; yoyogiuehara] ikebukuroYurakucho = [ikebukuroYurakucho; yoyogiuehara]
let insertEkitest4 = insertEki [ikebukuroYurakucho; yoyogiuehara] ikebukuroMaruouchi = [ikebukuroMaruouchi; yoyogiuehara]

(* 目的: ekimei_t 型のリスト lst を受け取り、
   ・ひらがなの順にならべかえ
   ・重複を取り除いた
    リストを返す*)

(* seiretsu: ekimei_t lst -> ekimei_t lst *)

let rec seiretsu lst = match lst with
    [] -> []
|   ({kanji = kanj; kana = kana; romaji = r; shozoku= s} as first) :: rest ->
        insertEki (seiretsu rest) first
    
(* test *)
let test1 = seiretsu [] = []
let test2 = seiretsu [yoyogiuehara] = [yoyogiuehara]
let test3 = seiretsu [yoyogiuehara; ikebukuroMaruouchi] = [ikebukuroMaruouchi; yoyogiuehara]
let test4 = seiretsu [ikebukuroMaruouchi; ikebukuroYurakucho] = [ikebukuroMaruouchi]
let test5 = seiretsu [ikebukuroYurakucho; ikebukuroMaruouchi] = [ikebukuroYurakucho]
