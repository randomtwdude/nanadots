" Custom vim-airline theme: Nana
" Based on the official theme Luna (https://github.com/Pychimp/vim-luna)
" (Literally just a recolor)

let g:airline#themes#nana#palette = {}

let g:airline#themes#nana#palette.accents = {
      \ 'red': [ '#eeeeee' , '' , 231 , '' , '' ],
      \ }


let s:N1 = [ '#424141' , '#A9E5BC' , 231  , 36 ]
let s:N2 = [ '#eeeeee' , '#689E95' , 231 , 29 ]
let s:N3 = [ '#eeeeee' , '#487870' , 231  , 23 ]
let g:airline#themes#nana#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#nana#palette.normal_modified = {
      \ 'airline_c': [ '#eeeeee' , '#467870' , 231     , 52      , ''     ] ,
      \ }


let s:I1 = [ '#eeeeee' , '#E56363' , 231 , 106 ]
let s:I2 = [ '#424141' , '#FAC9B8' , 231 , 29  ]
let s:I3 = [ '#eeeeee' , '#424141' , 231 , 23  ]
let g:airline#themes#nana#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#nana#palette.insert_modified = {
      \ 'airline_c': [ '#FAC9B8' , '#424141' , 255     , 52      , ''     ] ,
      \ }
let g:airline#themes#nana#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#E56363' , s:I1[2] , 106     , ''     ] ,
      \ }


let g:airline#themes#nana#palette.replace = copy(g:airline#themes#nana#palette.insert)
let g:airline#themes#nana#palette.replace.airline_a = [ s:I2[0]   , '#89DCEB' , s:I2[2] , 88     , ''     ]
let g:airline#themes#nana#palette.replace_modified = g:airline#themes#nana#palette.insert_modified

let s:V1 = [ '#eeeeee' , '#A7A7EE' , 222 , 208 ]
let s:V2 = [ '#eeeeee' , '#8383D1' , 231 , 29 ]
let s:V3 = [ '#eeeeee' , '#494984' , 231  , 23  ]
let g:airline#themes#nana#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#nana#palette.visual_modified = {
      \ 'airline_c': [ '#FAC9B8' , '#494984' , 231     , 52      , ''     ] ,
      \ }

let s:IA = [ '#4e4e4e' , '#212020' , 59 , 23 , '' ]
let g:airline#themes#nana#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#nana#palette.inactive_modified = {
      \ 'airline_c': [ '#95B1A4' , ''        , 166      , ''      , ''     ] ,
      \ }

let g:airline#themes#nana#palette.tabline = {
      \ 'airline_tab':  ['#424141', '#FAC9B8',  231, 29, ''],
      \ 'airline_tabsel':  ['#424141', '#A9E5BC',  231, 36, ''],
      \ 'airline_tabtype':  ['#424141', '#CFFFE9',  231, 36, ''],
      \ 'airline_tabfill':  ['#eeeeee', '#424141',  231, 23, ''],
      \ 'airline_tabmod':  ['#eeeeee', '#E56363',  231, 88, ''],
      \ }

let s:WI = [ '#424141', '#FAC9B8', 255, 88 ]
let g:airline#themes#nana#palette.normal.airline_warning = [
     \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
     \ ]

let g:airline#themes#nana#palette.normal_modified.airline_warning =
    \ g:airline#themes#nana#palette.normal.airline_warning

let g:airline#themes#nana#palette.insert.airline_warning =
    \ g:airline#themes#nana#palette.normal.airline_warning

let g:airline#themes#nana#palette.insert_modified.airline_warning =
    \ g:airline#themes#nana#palette.normal.airline_warning

let g:airline#themes#nana#palette.visual.airline_warning =
    \ g:airline#themes#nana#palette.normal.airline_warning

let g:airline#themes#nana#palette.visual_modified.airline_warning =
    \ g:airline#themes#nana#palette.normal.airline_warning

let g:airline#themes#nana#palette.replace.airline_warning =
    \ g:airline#themes#nana#palette.normal.airline_warning

let g:airline#themes#nana#palette.replace_modified.airline_warning =
    \ g:airline#themes#nana#palette.normal.airline_warning


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#nana#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#eeeeee' , '#495159' , 231 , 23 , ''     ] ,
      \ [ '#eeeeee' , '#424161' , 231 , 36 , ''     ] ,
      \ [ '#eeeeee' , '#494984' , 231 , 95 , ''     ] )

