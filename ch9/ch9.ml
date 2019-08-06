let empty = []
let list = 1::2::3::[]


let func l = match l with
    [] -> 0
|   first :: rest -> first

let res0 = func empty
let res1 = func list
