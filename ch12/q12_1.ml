(* 駅名( name )・最短距離(min_distance)・手前駅のリスト(before_statins) をもつ、駅のデータを表す型*)

type eki_t = {
    namae: string;
    saitan_kyori: float;
    temae_list: string list
}

