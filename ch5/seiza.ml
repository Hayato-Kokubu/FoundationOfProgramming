(*誕生日の月 m および 誕生日の日 d を受け取ったら、星座を返す 関数 seiza*)
(*seiza: int -> ( int -> string )  *)

let seiza m d =  if( (m = 3 && d >= 21 ) || (m = 4 && d < 20 ) ) then "おひつじ座"
            else if( (m = 4 && d >= 20 ) || (m = 5 && d < 21 ) ) then "おうし座"
            else if( (m = 5 && d >= 21 ) || (m = 6 && d < 22 ) ) then "ふたご座"
            else if( (m = 6 && d >= 22 ) || (m = 7 && d < 23 ) ) then "かに座"
            else if( (m = 7 && d >= 23 ) || (m = 8 && d < 23 ) ) then "しし座"
            else if( (m = 8 && d >= 23 ) || (m = 9 && d < 23 ) ) then "おとめ座"
            else if( (m = 9 && d >= 23 ) || (m = 10 && d < 24 ) ) then "てんびん座"
            else if( (m = 10 && d >= 24 ) || (m = 11 && d < 22 ) ) then "さそり座"
            else if( (m = 11 && d >= 22 ) || (m = 12 && d < 22 ) ) then "いて座"
            else if( (m = 12 && d >= 22 ) || (m = 1 && d < 20 ) ) then "やぎ座"
            else if( (m = 1 && d >= 20 ) || (m = 2 && d < 19 ) ) then "みずがめ座"
            else if( (m = 2 && d >= 20 ) || (m = 3 && d < 21 ) ) then "うお座"
            else "日付誤り"

(*テスト*)
let test01_1 =  seiza  3 21 = "おひつじ座"
let test01_2 =  seiza  4 19 = "おひつじ座"
let test02_1 = ( seiza  4 20 = "おうし座" )
let test02_2 = ( seiza  5 20 = "おうし座" )
let test03_1 = ( seiza  5 21 = "ふたご座" )
let test03_2 = ( seiza  6 21 = "ふたご座" )
let test04_1 = ( seiza  6 22 = "かに座" )
let test04_2 = ( seiza  7 22 = "かに座" )
let test05_1 = ( seiza  7 23 = "しし座" )
let test05_2 = ( seiza  8 22 = "しし座" )
let test06_1 = ( seiza  8 23 = "おとめ座" )
let test06_2 = ( seiza  9 22 = "おとめ座" )
let test07_1 = ( seiza  9 23 = "てんびん座" )
let test07_2 = ( seiza 10 23 = "てんびん座" )
let test08_1 = ( seiza 10 24 = "さそり座" )
let test08_2 = ( seiza 11 21 = "さそり座" )
let test09_1 = ( seiza 11 22 = "いて座" )
let test09_2 = ( seiza 12 21 = "いて座" )
let test10_1 = ( seiza 12 22 = "やぎ座" )
let test10_2 = ( seiza  1 19 = "やぎ座" )
let test11_1 = ( seiza  1 20 = "みずがめ座" )
let test11_2 = ( seiza  2 18 = "みずがめ座" )
let test12_1 = ( seiza  2 20 = "うお座" )
let test12_2 = ( seiza  3 20 = "うお座" )
