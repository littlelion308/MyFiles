" 	      _                    
"  _ ____   _(_)_ __ ___  _ __ ___ 
" | '_ \ \ / / | '_ ` _ \| '__/ __|
" | | | \ V /| | | | | | | | | (__ 
" |_| |_|\_/ |_|_| |_| |_|_|  \___|
"
" Plugins via vim-plug
call plug#begin()
" coc Code completion Plugin via vim-plug
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
" activate flietype plugin
filetype plugin indent on
" numbers near Rand
set number relativenumber
" syntax
syntax on
" remap Ctl-w (vim-keys) to Ctl-(vim-keys)
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" makig sure utf-8 encoding is enabled
set encoding=utf-8
" split right and below
set splitright splitbelow

" TAB code completion via coc

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" use :vimrc to open this file
command Vimrc edit ~/.config/nvim/init.vim
command Bspwmrc edit ~/.config/bspwm/bspwmrc
command Sxhkdrc edit ~/.config/sxhkd/sxhkdrc
command Polybarconf edit ~/.config/polybar/config
command Zshrc edit ~/.zshrc
" use " "g to compile groff
"nnoremap <Space>g :!groff -Kutf8 -ms % -T pdf >> %.pdf
autocmd BufWritePost *.ms :!groff -Kutf8 -ms % -T pdf >> %.pdf
nnoremap <Space>e :setlocal spell! spelllang=en_us<CR>
nnoremap <Space>d :setlocal spell! spelllang=de_de<CR>
