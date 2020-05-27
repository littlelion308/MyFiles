"aa Plugins
"
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'vimwiki/vimwiki'
Plug 'ThePrimeagen/vim-be-good'
"Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'kovetskiy/sxhkd-vim'
Plug 'junegunn/limelight.vim'
" Plug 'ap/vim-css-color'
call plug#end()

"
" Plugin settings
"

" coc

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

" Goyo/limelight

function! s:goyo_enter()
  	set noshowmode
  	set noshowcmd
  	set scrolloff=999
  	" colorscheme torte
  	highlight Comment ctermfg=4
  	Limelight
endfunction

function! s:goyo_leave()
  	set showmode
  	set showcmd
  	set scrolloff=5
  	" colorscheme default
  	Limelight!
  	highlight Comment ctermfg=5
	highlight StatusLine ctermfg=59
endfunction

"
" Mappings
"

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"nnoremap <Down> :resize -2<CR>
"nnoremap <Up> :resize +2<CR>
"nnoremap <Left> :vertical resize -2<CR>
"nnoremap <Right> :vertical resize +2<CR>

nnoremap <C-w><C-h> :vertical resize -2<CR>
nnoremap <C-w><C-l> :vertical resize +2<CR>
nnoremap <C-w><C-k> :resize +2<CR>
nnoremap <C-w><C-j> :resize -2<CR>

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '<+1<CR>gv-gv

map <Space>e :setlocal spell! spelllang=en_us<CR>
map <Space>d :setlocal spell! spelllang=de_de<CR>
map <Space>f :setlocal spell! spelllang=fr<CR>
map <Space>a :source ~/.config/nvim/init.vim<CR>
map <Space>gh :!groff -m ms % -T html > %.html<CR>
"map <C-]> <C-[>

"
" Autocommands
"

autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost *.ms !groff -t -m ms % -T pdf > %.pdf
autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s\+$//e
autocmd User GoyoEnter nested call <SID>goyo_enter()
autocmd User GoyoLeave nested call <SID>goyo_leave()

" autocmd! User GoyoEnter colorscheme torte
" autocmd! User GoyoEnter sleep 5
" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!
" autocmd! User GoyoLeave colorscheme default

"
" Status Line
"

" funktions

" function! StatuslineGit()
"   	let l:branchname = GitBranch()
"   	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
" endfunction

set statusline=
set statusline+=\ %M
set statusline+=\ %F
set statusline+=\ %r
set statusline+=\ %y
" set statusline+=%{StatuslineGit()}
set statusline+=%=
set statusline+=\ %l/%L:%c
set statusline+=\ %p%%
set statusline+=\ [%n]
highlight StatusLine ctermfg=59

" set statusline=
" set statusline+=%#LineNr#
" set statusline+=\ %a

" hi User1 guifg=#eea040 guibg=#ffffff
" hi User2 guifg=#dd3333 guibg=#ffffff
" hi User3 guifg=#ff66ff guibg=#ffffff
" hi User4 guifg=#a0ee40 guibg=#ffffff
" hi User5 guifg=#eeee40 guibg=#ffffff


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

"
" General settings
"

filetype on
filetype plugin on
syntax on
set encoding=utf-8
set splitbelow splitright
set number relativenumber
set ignorecase
set smartcase
set mouse=a
colorscheme torte
highlight StatusLine ctermfg=59
highlight Comment ctermfg=5

"set relativenumber
"set termguicolors
"colorscheme default
"highlight StatusLine ctermfg=101
"highlight StatusLine ctermfg=102
