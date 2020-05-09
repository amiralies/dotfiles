set nocompatible

call plug#begin()

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'dracula/vim'
Plug 'sickill/vim-monokai'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf.vim'
Plug 'derekwyatt/vim-scala'
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-surround'
Plug 'cakebaker/scss-syntax.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'kana/vim-textobj-user'
Plug 'amiralies/vim-textobj-elixir'
Plug 'jparise/vim-graphql'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'ElmCast/elm-vim'
Plug 'RRethy/vim-illuminate'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'ocaml/vim-ocaml'

call plug#end()

set number
set ru

syntax on
color dracula
set tgc
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"Leader
let mapleader=","

"default indent
set ts=4
set sts=2
set sw=2

"Smart case search
set ignorecase
set smartcase

set laststatus=2


"Custom keymaps
map <silent> <C-k><C-b> :NERDTreeToggle<CR>
imap jj <Esc>

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

" Scala specific
au BufRead,BufNewFile *.sbt set filetype=scala

" jump defintion
nmap <silent> gd <Plug>(coc-definition)

" Tab and shift tab for completion navigation
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" FZF
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'
nnoremap <C-p> :FZF<CR>
nnoremap <C-S-f> :Ag<Space>
nnoremap <C-b> :Buffers<CR>

" Splits
set splitbelow
set splitright

" split whole vim
nmap <silent> <leader>sfh :topleft vnew<CR>
nmap <silent> <leader>sfl :botright vnew<CR>
nmap <silent> <leader>sfk :topleft new<CR>
nmap <silent> <leader>sfj :botright new<CR>

" split window(split)
nmap <silent> <leader>sh :leftabove vnew<CR>
nmap <silent> <leader>sl :rightbelow vnew<CR>
nmap <silent> <leader>sk :leftabove new<CR>
nmap <silent> <leader>sj :rightbelow new<CR>

map <Esc>[1;5A <C-Up>
map <Esc>[1;5D <C-Left>
map <Esc>[1;5B <C-Down>
map <Esc>[1;5C <C-Right>

nnoremap <C-Up> <C-W>-<C-W>-
nnoremap <C-Down> <C-W>+<C-W>+
nnoremap <C-Right> <C-W>><C-W>>
nnoremap <C-Left> <C-W><<C-W><

" hover
nnoremap <silent> gh :call CocAction('doHover')<cr>

" Gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" List diagnostics
nnoremap <leader>d :CocList diagnostics<cr>

" Rnemae word under cursor
nmap <leader>rn <Plug>(coc-rename)

" folding
"set foldmethod=syntax
"set foldlevelstart=20

" highlight current line
set cul

" indent guides
let g:indentLine_char='❘'
let g:indentLine_enabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1

set list
" space is needed at the end
set lcs=tab:\🡺\ ,trail:~

" External vim config
set exrc
set secure

"" Js specific
let g:javascript_plugin_flow = 1

" fomratter
vmap <silent> <leader>f :call CocAction('formatSelected', visualmode())<CR>
nmap <silent> <leader>f :call CocAction('format')<CR>
vmap <silent> = :call CocAction('formatSelected', visualmode())<CR>
nmap <silent> = :call CocAction('format')<CR>

" jsonc comments
autocmd FileType json syntax match Comment +\/\/.\+$+

" limelight
nmap <Leader>l :Limelight!!<CR>

" nohl
nmap <silent> \ :nohl<cr>

" Coc commands
nmap <C-k><C-p> :CocList commands<cr>

" Fix cursor shapes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let g:indentLine_fileTypeExluce=['help', 'nerdtree']
autocmd FileType help,nerdtree IndentLinesToggle
autocmd FileType help,nerdtree LeadingSpaceToggle

set encoding=UTF-8
set hlsearch

let g:Illuminate_delay = 0
let g:Illuminate_ftblacklist = ['nerdtree']

if has('nvim')
  set guicursor=n:blinkon1
endif

