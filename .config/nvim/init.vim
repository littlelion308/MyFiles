" Plugins
"

call plug#begin()

" Plug 'ap/vim-css-color'
" Plug 'vim/killersheep'
" Plug 'vimwiki/vimwiki'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'junegunn/fzf.vim',
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

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
nnoremap gf :NERDTreeToggle<CR>
nnoremap ga :vsplit ~/.local/share/char<CR>:vertical resize 20<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <Space>cc :cd ~/Downloads/Code/MyFiles/.config<CR>
nnoremap <Space>cl :cd ~/Downloads/Code/MyFiles/.local<CR>
nnoremap <Space>ch :cd ~/.<CR>
nnoremap <Space>cs :cd /<CR>
nnoremap <Space>cd :cd ~/Downloads/Code/MyFiles/<CR>
nnoremap <Space>cm :cd ~/.config/mutt/<CR>


" nnoremap gf :left<CR>:vsp<CR>:Ntree<CR>:vertical resize 20<CR>

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
autocmd BufWritePost *sh !shellcheck %
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

"function! StatuslineGit()
"  	let l:branchname = GitBranch()
"  	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction

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

command! Bspwmrc n ~/Downloads/Code/MyFiles/.config/bspwm/bspwmrc
command! Sxhkdrc n ~/Downloads/Code/MyFiles/.config/sxhkd/sxhkdrc
command! Vimrc n ~/Downloads/Code/MyFiles/.config/nvim/init.vim
command! Vifmrc n ~/Downloads/Code/MyFiles/.config/vifm/vifmrc
command! Rofirc n ~/Downloads/Code/MyFiles/.config/rofi/config.rasi
command! Dunstrc n ~/Downloads/Code/MyFiles/.config/dunst/dunstrc
command! Polybarconfig n ~/Downloads/Code/MyFiles/.config/polybar/config
command! Zshrc n ~/Downloads/Code/MyFiles/.zshrc
command! Muttrc n ~/Downloads/Code/MyFiles/.config/mutt/muttrc
command! Addressbook n ~/Downloads/Code/MyFiles/.config/abook/addressbook
command! Zprofile n ~/Downloads/Code/MyFiles/.zprofile

" command Addressbook n ~/.config/abook/addressbook

command! Q q
command! W w
command! Wq wq
command! WQ wq

"
" General settings
"

set encoding=utf-8
set splitbelow splitright
set number relativenumber
set ignorecase
set smartcase
set mouse=a

filetype on
filetype plugin on

syntax on
colorscheme torte

highlight StatusLine ctermfg=59
highlight Comment ctermfg=5

"set relativenumber
"set termguicolors
"colorscheme default
"highlight StatusLine ctermfg=101
"highlight StatusLine ctermfg=102
