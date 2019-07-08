(* 駅名のデータ( 漢字名, 仮名名, ローマ字名, 路線名 ) を表す型 *)
type ekimei_t = {
  kanji: string;
  kana: string;
  romaji: string;
  shozoku: string;
}

(*目的: 駅名の情報 ekimei を受け取り、"路線名、駅名（仮名）" の形式の文字列を返す関数*)
(* hyoji: ekimei_t -> string *)
let hyoji ekimei = match ekimei with
  {kanji = kj; kana = kn; romaji = r; shozoku = s} ->
  s ^ "、" ^ kj ^ "（" ^ kn ^ "）"

(* テスト *)
let test1 = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線"} = "丸ノ内線、茗荷谷（みょうがだに）"
