
"################################
"Quickfix auto closer
"###############################
augroup QfAutoCommands
  autocmd!

  " Auto-close quickfix window
  autocmd WinEnter * if (winnr('$') == 1) && (getbufvar(winbufnr(0), '&buftype')) == 'quickfix' | quit | endif
augroup END

"################################
"Keymapping
"###############################
"== ctags
"nnoremap <C-v> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
"nnoremap <C-h> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

"== window
nnoremap <C-Up> <C-w><C-k>
nnoremap <C-Down> <C-w><C-j>
nnoremap <C-Right> <C-w><C-l>
nnoremap <C-Left> <C-w><C-h>
nnoremap <C-q> :only
nnoremap <C-]> g<C-]> "ctags: show candidate if multiple hit

"== Unite
"noremap <C-B> :Unite buffer<CR> "Unit: show buffer 
"noremap <C-R> :Unite file_mru<CR> "Unit: show recent used file
"noremap <C-U> :Unite file_mru<CR> "Unit: show recent used file
"Unit: show recent used file
noremap <F12> :Unite file_mru -toggle<CR>

"reload setting
:command! R source ~/.exrc
"quit all window
:command! Q wqa

"map <F2> :Tlist
"map <F12> <C-W><C-W>


"##########################################################################
"##### Basic settings
set nu
set tabstop=4
set noai "no auto-indent
set noai
set hlsearch "hilight search
set ruler "cursor position
set showcmd "show command 
set showmatch "show bracket match 
set noincsearch "disable incremental search
set nobackup "disable backup, also -n arg
set ambiwidth=double
"set nowrap
set expandtab " convert tab 2 space
retab

autocmd QuickFixCmdPost "grep" cwindow

"##### Encoding
"set encoding=japan
"set fileencodings=cp932
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp
"set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis,cp932

"###### Syntax
"set syntax=BlackSea
"set syntax=af
"set syntax=PapayaWhip
"set syntax=autumn
set syntax=mySyntax
"set syntax=jellybeans
"colorscheme pablo
highlight Search term=reverse cterm=reverse,underline ctermbg=16 ctermfg=8

"##### Show tab,space,return
highlight JpSpace cterm=reverse ctermfg=8 guifg=Blue gui=reverse
au BufRead,BufNew * match JpSpace /　/

"##### Show invisible char
set listchars=tab:>-,trail:_,precedes:<,extends:>,
"set listchars=tab:>-,trail:_,precedes:<,extends:>,eol:↲,
"set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"set listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¶
"set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
"set listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
"set listchars=tab:>-,trail:.,precedes:<,extends:>,eol
set list

"#### Disable auto comment
setlocal formatoptions-=r
setlocal formatoptions-=o
"augroup auto_comment_off
"  autocmd!
"  autocmd BufEnter * setlocal formatoptions-=r
"  autocmd BufEnter * setlocal formatoptions-=o
"augroup END

"###
"g:previm_open_cmd

"################################
" Auto paste mode
"################################
if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function! XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif

"################################
"Dsable markdown auto collopse
"###############################
""" markdown {{{
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
autocmd BufRead,BufNewFile *.txt  set filetype=markdown
" Need: kannokanno/previm
nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl+P 
" Disable auto collopse
let g:vim_markdown_folding_disabled=1
" }}}


"################################
"NeoBundle
"###############################

"##################################################3
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

"for 
NeoBundle 'Shougo/neomru.vim'

"for markdown preview
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

"for Unite
NeoBundle 'Shougo/unite.vim'

"for Ctags
NeoBundle 'universal-ctags/ctags'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck



