set title
set number
set ambiwidth=double
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent
set cursorline

"#前回終了したカーソル行に移動幅
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

"ヤンクをクリップボードへコピー
set clipboard=unnamed,autoselect

" -------------------
" 日本語の設定
" -------------------
set termencoding=utf-8
set encoding=japan
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp
set fenc=utf-8
set enc=utf-8

" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" 左右のカーソル移動で行間移動可能にする
set whichwrap=b,s,<,>,[,]

