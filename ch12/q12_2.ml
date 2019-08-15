(* 駅名の情報を格納するレコード型  *)  (*by q_8.5 *)

type ekimei_t = {
    kanji: string;
    kana: string;
    romaji: string;
    shozoku: string;
}

(* 駅名( name )・最短距離(min_distance)・手前駅のリスト(before_statins) をもつ、駅のデータを表す型*)

type eki_t = {
    namae: string;
    saitan_kyori: float;
    temae_list: string list
}

(* 駅名情報のリストを受け取り、駅情報を作成する *)
(* make_eki_list: ekimei_t list -> eki_t list *)

let rec make_eki_list lst = match lst with
    [] -> []
|   {kanji= kanj; kana= kana; romaji= r; shozoku= s} :: rest -> 
    {namae = kanj; saitan_kyori = infinity; temae_list = []} :: make_eki_list rest

(* test *)
let yoyogiuehara = {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}
let yoyogikoen = {kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}


let test1 = make_eki_list [] = []
let test2 = make_eki_list [yoyogiuehara] = [{namae = "代々木上原"; saitan_kyori = infinity; temae_list = []}] 
let test3 = make_eki_list [yoyogiuehara; yoyogikoen] = [
    {namae = "代々木上原"; saitan_kyori = infinity; temae_list = []};
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
    ]
