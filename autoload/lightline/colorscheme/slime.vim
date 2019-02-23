let s:string  = "#e1e2de"
let s:dark    = "#2a2f30"
let s:darker  = "#343b3c"
let s:lighter = "#424b4c"
let s:green   = "#3f4b38"
let s:blue    = "#415959"
let s:red     = "#502122"
let s:yellow  = "#706D50"
let s:orange  = "#5b3c24"

let s:p = { "normal" : {} , "inactive": {} , "insert"  : {} ,
          \ "replace": {} , "visual"  : {} , "tabline" : {} }

let s:p.normal.left     = [[s:string, s:lighter], [s:string, s:darker]]
let s:p.normal.middle   = [[s:string, s:dark]]
let s:p.normal.right    = [[s:string, s:lighter], [s:string, s:darker]]

let s:p.inactive.left   = copy(s:p.normal.middle)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.inactive.right  = copy(s:p.normal.middle)

let s:p.insert.left     = [[ s:string, s:blue ]]
let s:p.insert.right    = copy(s:p.normal.right)

let s:p.visual.left     = [[ s:string, s:orange ]]
let s:p.visual.right    = copy(s:p.normal.right)

let s:p.replace.left    = [[ s:string, s:red ]]
let s:p.replace.right   = copy(s:p.normal.right)

let s:p.tabline.left    = copy(s:p.normal.middle)
let s:p.tabline.tabsel  = [[ s:string, s:lighter ]]
let s:p.tabline.right   = copy(s:p.normal.middle)

let s:p.normal.error    = [[ s:string, s:red ]]
let s:p.normal.warning  = [[ s:string, s:yellow ]]

let g:lightline#colorscheme#slime#palette = lightline#colorscheme#fill(s:p)
