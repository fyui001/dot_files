set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
syntax on

set virtualedit=onemore
set visualbell
set showmatch
set wildmode=list:longest

"カーソル
nnoremap j gj
nnoremap k gk
set number
set cursorline



"文字コード
set fileencoding=utf8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double 

" tab, indentの設定
set list listchars=tab:\▸\-
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set shiftwidth=4

"文字列検索
set incsearch 
set smartcase
set ignorecase
set hlsearch
set wrapscan
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"ペースト
if &term =~ "xterm"
    let &t_AI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "]\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <spacial> <expr> <Esc> [200~ XTermPasteBefin("")
endif


