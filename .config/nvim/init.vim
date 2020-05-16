" Plugins
"
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimwiki/vimwiki'

call plug#end()
"
" Plugin settings
"
set nocompatible
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
" Mappings
"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <Down> :resize -2<CR>
nnoremap <Up> :resize +2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '<+1<CR>gv-gv
map <Space>e :setlocal spell! spelllang=en_us<CR>
map <Space>d :setlocal spell! spelllang=de_de<CR>
map <Space>f :setlocal spell! spelllang=fr<CR>
map <Space>a :source ~/.config/nvim/init.vim
"map <C-]> <C-[>
"
" Autocommands
"
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost *.ms !groff -m ms -T pdf > %.pdf
"
" Status Line
"
set statusline=
set statusline+=\ %M
set statusline+=\ %F
set statusline+=\ %r
set statusline+=\ %y
set statusline+=%=
set statusline+=\ %l/%L:%c
set statusline+=\ %p%%
set statusline+=\ [%n]


"
" General settings
"
filetype plugin on
syntax on
set encoding=utf-8
set splitbelow splitright
set number relativenumber
"
" Comands 
" 
command Bspwmrc n ~/.config/bspwm/bspwmrc
command Sxhkdrc n ~/.config/sxhkd/sxhkdrc
command Vimrc n ~/.config/nvim/init.vim
command Vifmrc n ~/.config/vifm/vifmrc
command Rofirc n ~/.config/rofi/config.rasi
command Dunst n ~/.config/dunst/dunstrc
command Polybarconfig n ~/.config/polybar/config
command Zshrc n ~/.zshrc
command Q q
command W w
command Wq wq
command WQ wq
