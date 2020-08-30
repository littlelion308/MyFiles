" General settings
"
colorscheme torte
filetype on
filetype plugin on
highlight Comment ctermfg=5
highlight StatusLine ctermfg=59
let mapleader='\'
set encoding=utf-8
set ignorecase
set mouse=a
set number relativenumber
set smartcase
set splitbelow splitright
syntax on

"
" Commands
"

command! Addressbook n ~/Downloads/Code/MyFiles/.config/abook/addressbook
command! Bspwmrc n ~/Downloads/Code/MyFiles/.config/bspwm/bspwmrc
command! Dunstrc n ~/Downloads/Code/MyFiles/.config/dunst/dunstrc
command! Muttrc n ~/Downloads/Code/MyFiles/.config/mutt/muttrc
command! Polybarconfig n ~/Downloads/Code/MyFiles/.config/polybar/config
command! Rofirc n ~/Downloads/Code/MyFiles/.config/rofi/config.rasi
command! Sxhkdrc n ~/Downloads/Code/MyFiles/.config/sxhkd/sxhkdrc
command! Vifmrc n ~/Downloads/Code/MyFiles/.config/vifm/vifmrc
command! Vimrc n ~/Downloads/Code/MyFiles/.config/nvim/init.vim
command! Zprofile n ~/Downloads/Code/MyFiles/.zprofile
command! Zshrc n ~/Downloads/Code/MyFiles/.zshrc
command! Q q
command! W w
command! WQ wq
command! Wq wq

"
" Mappings
"

" nnoremap ga :vsplit ~/.local/share/char<CR>:vertical resize 20<CR>
" nnoremap gf :NERDTreeToggle<CR>
" nnoremap gf :left<CR>:vsp<CR>:Ntree<CR>:vertical resize 20<CR>

nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>p :Files<CR>
nnoremap <C-w><C-h> :vertical resize -2<CR>
nnoremap <C-w><C-j> :resize -2<CR>
nnoremap <C-w><C-k> :resize +2<CR>
nnoremap <C-w><C-l> :vertical resize +2<CR>
nnoremap <Space>c :cd ~/Downloads/Code/MyFiles/.config<CR>
nnoremap <Space>h :cd ~/.<CR>
nnoremap <Space>m :cd ~/.config/mutt/<CR>
nnoremap <Space>s :cd /<CR>
nnoremap <Space>d :setlocal spell! spelllang=de_de<CR>
nnoremap <Space>e :setlocal spell! spelllang=en_us<CR>
nnoremap <Space>f :setlocal spell! spelllang=fr<CR>
nnoremap <Space>gh :!groff -m ms % -T html > %.html<CR>
nnoremap Y y$
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
vnoremap < <gv
vnoremap > >gv
xnoremap J :move '<+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
"
" Auto commends
"

autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost *.ms !groff -t -m ms % -T pdf > %.pdf
autocmd Filetype markdown !pandoc -t ms -o %.pdf %
autocmd BufWritePost *sh !shellcheck %
autocmd BufWritePost *bspwmrc !shellcheck %
autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s\+$//e
autocmd Filetype sh !shellcheck %
autocmd BufWritePost *init.vim source ~/.config/nvim/init.vim

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
highlight StatusLine ctermfg=59

"
" Commands
"


command! Addressbook n ~/Downloads/Code/MyFiles/.config/abook/addressbook
command! Bspwmrc n ~/Downloads/Code/MyFiles/.config/bspwm/bspwmrc
command! Dunstrc n ~/Downloads/Code/MyFiles/.config/dunst/dunstrc
command! Muttrc n ~/Downloads/Code/MyFiles/.config/mutt/muttrc
command! Polybarconfig n ~/Downloads/Code/MyFiles/.config/polybar/config
command! Rofirc n ~/Downloads/Code/MyFiles/.config/rofi/config.rasi
command! Sxhkdrc n ~/Downloads/Code/MyFiles/.config/sxhkd/sxhkdrc
command! Vifmrc n ~/Downloads/Code/MyFiles/.config/vifm/vifmrc
command! Vimrc n ~/Downloads/Code/MyFiles/.config/nvim/init.vim
command! Zprofile n ~/Downloads/Code/MyFiles/.zprofile
command! Zshrc n ~/Downloads/Code/MyFiles/.zshrc
command! Q q
command! W w
command! WQ wq
command! Wq wq
"
" Plugging
"

call plug#begin()

" Plug 'preservim/nerdtree'
" Plug 'vim/killersheep'

Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf.vim',
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

call plug#end()

"
" Plugging settings
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

autocmd User GoyoEnter nested call <SID>goyo_enter()
autocmd User GoyoLeave nested call <SID>goyo_leave()

function! s:goyo_enter()
  	set noshowmode
  	set noshowcmd
  	set scrolloff=999
  	highlight Comment ctermfg=4
  	Limelight
endfunction

function! s:goyo_leave()
  	set showmode
  	set showcmd
  	set scrolloff=5
  	Limelight!
  	highlight Comment ctermfg=5
endfunction

" Easymotion

map ; <Plug>(easymotion-prefix)

" Vimiki


    let wiki_1 = {}
    let wiki_1.path = '~/Downloads/vimwiki'
    let wiki_1.index = 'main'

    let g:vimwiki_list = [wiki_1]

"
" Second Settings
"

highlight Comment ctermfg=5
