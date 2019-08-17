(* 駅名( name )・最短距離(min_distance)・手前駅のリスト(before_statins) をもつ、駅のデータを表す型*)

type eki_t = {
    namae: string;
    saitan_kyori: float;
    temae_list: string list
}


(* eki_t のリスト lst と 起点 kiten を受け取り、初期化を行う *)
(* shokika: eki_t list -> string -> eki_t list *)

let rec shokika lst kiten = match lst with
    [] -> []
|   ({namae = n; saitan_kyori = s; temae_list = tl} as first ) :: rest -> 
        (
            if n = kiten then {namae = n; saitan_kyori = 0.0; temae_list = kiten :: tl}  (* {namae = n; saitan_kyori = 0.0; temae_list = [kiten]} *) 
                         else first 
        )  :: shokika rest kiten (* shokika rest kiten  *)

(* test *)
let yoyogiuehara = {namae = "代々木上原"; saitan_kyori = infinity; temae_list = []}
let yoyogikoen = {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []}

let test1 = shokika [] "代々木上原" = []
let test2 = shokika [yoyogiuehara] "代々木上原" = 
    [{namae = "代々木上原"; saitan_kyori = 0.0; temae_list = ["代々木上原"]}
    ]
let test3 = shokika [yoyogiuehara; yoyogikoen] "代々木上原" = 
    [{namae = "代々木上原"; saitan_kyori = 0.0; temae_list = ["代々木上原"]};
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []}
    ]
let test4 = shokika [yoyogiuehara; yoyogikoen] "代々木公園" = 
    [{namae = "代々木上原"; saitan_kyori = infinity; temae_list = []};
    {namae = "代々木公園"; saitan_kyori = 0.0; temae_list = ["代々木公園"]}
    ]


