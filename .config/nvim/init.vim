set number relativenumber
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
syntax on
set encoding=utf-8
map <Space>e :setlocal spell! spelllang=en_us<CR>
map <Space>d :setlocal spell! spelllang=de_de<CR>
set splitbelow splitright
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost *.ms !groff -ms -T pdf >> %.pdf

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
filetype plugin on
set ruler
command Bspwmrc n ~/.config/bspwm/bspwmrc
command Sxhkdrc n ~/.config/sxhkd/sxhkdrc
command Vimrc n ~/.config/nvim/init.vim
command Vifmrc n ~/.config/vifm/vifmrc
command Rofirc n ~/.config/rofi/config.rasi
command Dunst n ~/.config/dunst/dunstrc
command Polybarconfig n ~/.config/polybar/config
command Zshrc n ~/.zshrc
