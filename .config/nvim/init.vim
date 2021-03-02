" General settings
"

colorscheme slate
filetype on
filetype plugin on
highlight Comment ctermfg=5
highlight Search ctermfg=0
highlight StatusLine ctermfg=59
let g:limelight_conceal_ctermfg=8
let mapleader=' '
set colorcolumn=80
set encoding=utf-8
set ignorecase
set mouse=a
set number relativenumber
set scrolloff=8
set smartcase
set splitbelow splitright
syntax on

"
" Functions
"

function CountWords()
	!wc "%"
endfunction
function MarkdownMakeHeader()
	map ,qMarkdownMakeHeader I#<Esc>
	norm ,qMarkdownMakeHeader
endfunction

"
" Commands
"

command! Addressbook n ~/.local/share/abook/addressbook
command! Bspwmrc n ~/Downloads/Code/MyFiles/.config/bspwm/bspwmrc
command! Dunstrc n ~/Downloads/Code/MyFiles/.config/dunst/dunstrc
command! Dxhd n ~/Downloads/Code/MyFiles/.config/dxhd/dxhd.sh
command! Muttrc n ~/Downloads/Code/MyFiles/.config/mutt/muttrc
command! Polybarconfig n ~/Downloads/Code/MyFiles/.config/polybar/config
command! Q q
command! Rofirc n ~/Downloads/Code/MyFiles/.config/rofi/config.rasi
command! Sxhkdrc n ~/Downloads/Code/MyFiles/.config/sxhkd/sxhkdrc
command! Vf Vifm
command! Vifmrc n ~/Downloads/Code/MyFiles/.config/vifm/vifmrc
command! Vimrc n ~/Downloads/Code/MyFiles/.config/nvim/init.vim
command! W w
command! WQ wq
command! Wq wq
command! Zprofile n ~/Downloads/Code/MyFiles/.zprofile
command! Zshrc n ~/Downloads/Code/MyFiles/.zshrc
command! WC call CountWords()

"
" Mappings
"

nnoremap <C-p> :GFiles<CR>
nnoremap <C-w><C-h> :vertical resize -2<CR>
nnoremap <C-w><C-j> :resize -2<CR>
nnoremap <C-w><C-k> :resize +2<CR>
nnoremap <C-w><C-l> :vertical resize +2<CR>
nnoremap <C-w>t :tabedit %<CR>
nnoremap <Leader>a :n ~/Downloads/Code/MyFiles/.config/nvim/init.vim<CR>:cd ~/Downloads/Code/MyFiles/.config<CR>
nnoremap <Leader>c :cd ~/Downloads/Code/MyFiles/.config<CR>
nnoremap <Leader>d :setlocal spell! spelllang=de_de<CR>
nnoremap <Leader>e :setlocal spell! spelllang=en_us<CR>
nnoremap <Leader>f :setlocal spell! spelllang=fr<CR>
nnoremap <Leader>h :cd ~/.<CR>
nnoremap <Leader>m :cd ~/.config/mutt/<CR>
nnoremap <Leader>p :Files<CR>
nnoremap <Leader>s :cd /<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap Y y$
nnoremap gn :nohlsearch<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
vnoremap < <gv
vnoremap > >gv
vnoremap S :sort<CR>gv
nnoremap gf :Vifm<CR>
xnoremap J :move '<+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv

"
" Auto commands
"

" autocmd Filetype vimwiki !pandoc -t ms -o %.pdf %
autocmd BufWritePost *.ms !groff -t -m ms % -T pdf > %.pdf
autocmd BufWritePost *bspwmrc !shellcheck %
autocmd BufWritePost *gv !dot -Txlib % &
autocmd BufWritePost *init.vim source ~/.config/nvim/init.vim
autocmd BufWritePost *sh !shellcheck %
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost ~/Downloads/Code/MyFiles/.config/dxhd/dxhd.sh !dxhd -r
autocmd BufWritePost *.tex !pdflatex %
autocmd BufWritePre * %s/\s\+$//e
autocmd Filetype markdown !pandoc -t ms -o %.pdf %
autocmd Filetype sh !shellcheck %
autocmd InsertEnter * norm zz

"
" Status Line
"

highlight StatusLine ctermfg=59
set statusline+=%=
set statusline+=\ %F
set statusline+=\ %M
set statusline+=\ %l/%L:%c
set statusline+=\ %p%%
set statusline+=\ %r
set statusline+=\ %y
set statusline+=\ [%n]
set statusline=

"
" Plugging
"

call plug#begin()


" Plug 'jremmen/vim-ripgrep'
" Plug 'kovetskiy/sxhkd-vim'
" Plug 'preservim/nerdtree'
" Plug 'scrooloose/syntastic'
" Plug 'vim/killersheep'



Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf.vim',
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'mattn/calendar-vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vifm/vifm.vim'
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

map <Leader><Leader> <Plug>(easymotion-prefix)

" Vimwiki

let wiki_1 = {}
let wiki_1.path = '~/Downloads/vimwiki'
let wiki_1.index = 'main'
let g:vimwiki_list = [wiki_1]

"
" Second Settings
"

highlight Comment ctermfg=5
highlight Search ctermfg=0
