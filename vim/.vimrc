" basic configure
:set nocompatible
:set number
:set hlsearch " hihglight search
:set ls=2
:set incsearch
:set showcmd  " show incomplete command
syntax enable
syntax on

colorscheme desert

let tlist_texi_settings   = 'texinfo;c:sections;g:graphics;l:labels'

" taglist set
" let Tlist_Auto_Open=1
" let Tlist_Show_One_File=1
" let Tlist_Exit_OnlyWindow=1
" let Tlist_Use_Left_Window=1
" map <silent> <F2> :TlistToggle<cr> " taglist quick key

" tagbar set
let tagbar_left=1 " show left window
let tagbar_usearrows = 0
let g:tagbar_width = 30
map <silent> <F2> :TagbarToggle<CR> " tagbar quick key

" NERDTree
let NERDTreeDirArrows=0
let NERDTreeWinPos=1
map <silent> <F9>  :NERDTreeToggle<cr>  " show/hide NERDTree

" tselect config
nmap <C-l> :tselect <C-R>=expand("<cword>")<CR><CR>

" cscope config
cs add cscope.out
nmap <C-c> :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-k> :cs find g <C-R>=expand("<cword>")<CR><CR>

" vimgrep under cusor word
command -nargs=+ Grep  :execute 'vimgrep /' .expand('<cword>'). '/' '<args>' | copen " grep from argument
command Gfile :execute 'vimgrep /' .expand('<cword>'). '/ ' .expand('%') | copen " grep from current file
" F4, search from current directory
" map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" easily way, move cursor to other window
" map <C-h> :wincmd h<CR>
" map <C-j> :wincmd j<CR>
" map <C-k> :wincmd k<CR>
" map <C-l> :wincmd l<CR>

" move in edit mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" easily way, resize window
:map - <C-W>-
:map + <C-W>+
:map < <C-W><
:map > <C-W>>

" key remap
inoremap jj <Esc>

" easymotion plug
:map f <Plug>(easymotion-prefix)
:map ff <Plug>(easymotion-s)
:map fs <Plug>(easymotion-f)
:map fl <Plug>(easymotion-lineforward)
:map fj <Plug>(easymotion-j)
:map fk <Plug>(easymotion-k)
:map fh <Plug>(easymotion-linebackward)

" run ex-command
command -nargs=+ Run :cexpr system('<args>') | copen
