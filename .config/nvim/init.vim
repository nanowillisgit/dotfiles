set nocompatible
filetype off 

"{{{1 Plugin installations
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/tpope/vim-surround'
Plug 'SirVer/ultisnips' 
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'dylanaraps/wal.vim'
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
Plug 'gabrielelana/vim-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'vim-airline/vim-airline'
Plug 'kovetskiy/sxhkd-vim'
Plug 'https://github.com/tyru/eskk.vim'
Plug 'dag/vim-fish'
Plug 'deviantfero/wpgtk.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ap/vim-css-color'
Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()

"}}}1


"{{{1 Eyecandy and GUI configuration

" Syntax highlight
syntax on

" Color scheme
colorscheme wpgtkAlt

" Configure airline
let g:airline#extensions#tabline#enabled=1

" Airline thene
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wpgtk'

" Set line numbers
set number
set relativenumber

" Set conceal highlight colors
highlight Conceal guibg=NONE ctermbg=NONE

" Allow for italic comments
highlight Comment cterm=italic gui=italic

"}}}1


"{{{1 Quality of life keybindings

"Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"nmap <C-o> :NERDTreeToggle<CR>

nnoremap <C-o> :set cursorline! cursorcolumn!<CR>

" Saving
nnoremap zz :update<cr>
nnoremap <C-e> :x<cr>

" Normal mode
inoremap jk <esc>
inoremap kj <esc>

" Compiling markup types
map <leader>c :w! \| !compiler <c-r>%<CR>

" Markdown
"nnoremap <buffer><nowait><silent> <C-w> :<c-u>silent call system('pandoc '.expand('%:p:S').' -o '.expand('%:p:r:S').'.pdf')<cr>

" Spell checking
map <F6> :setlocal spell! spelllang=en_us<CR>

"}}}1


"{{{1 Vimtex configuration
" Vimtex configuration
let g:tex_flavor='xelatex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdgm'
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine='xelatex'
let g:Tex_CompileRule_pdf='pdflatex --interaction=nonstopmode $*'
"}}}1


"{{{1 Ultisnips configuration
let g:UltiSnipsSnippetsDir="~/.vim/myUltiSnips"
"let g:UltiSnipsSnippetDirectories = ['myUltiSnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<space><space>"
"let g:UltiSnipsJumpBackwardTrigger = "<tab><tab>"
nnoremap <C-b> :UltiSnipsEdit<cr>
"}}}1


"{{{1 Autocommands

" Clear tex log and debugging files on exit of .tex
autocmd VimLeave *.tex !texclear %

" Detect sxhkd filetype
au BufRead,BufNewFile sxhkd*	set filetype=sxhkd

" Restart sxhkd when writing any of the config files
autocmd BufWritePost *sxhkdrc.common !sxhkdreload
autocmd BufWritePost *sxhkdrc.desk !sxhkdreload
autocmd BufWritePost *sxhkdrc.laptop !sxhkdreload
au BufRead,BufNewFile init.vim	set foldmethod=marker

"}}}1


"{{{1 Cursorline Highlighting
" Cursorline highlighting
set cursorline
set cursorcolumn
hi CursorLine term=italic cterm=bold ctermbg=8 ctermfg=NONE
hi CursorColumn term=bold cterm=bold ctermbg=8 ctermfg=NONE
"}}}1


"{{{1 eskk configuration
let g:eskk#large_dictionary = {
			\ 'path': '/usr/share/skk/SKK-JISYO.L',
			\ 'sorted': 1,
			\ 'encoding': 'euc-jp'
			\}
"}}}1

"{{{1 vimwiki configuration
let g:vimwiki_list = [{'path': '~/.vimwiki/vimwiki/', 'syntax': 'default', 'ext': '.vmk'}]
"}}}1

set foldmethod=syntax
filetype plugin indent on
