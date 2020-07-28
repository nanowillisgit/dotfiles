set nocompatible
filetype off 
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'https://github.com/tpope/vim-surround'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' 

" Distraction free vim writing
Plug 'junegunn/goyo.vim'

" Quicktex
"Plug 'brennier/quicktex'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Pywal colors plugin
Plug 'dylanaraps/wal.vim'

" Pandoc auto-preview
"Plug 'ragon000/vim-pandoc-live-preview'

" LaTeX Plugin
Plug 'lervag/vimtex'

" LaTeX concealing
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Markdown plugin
Plug 'gabrielelana/vim-markdown'

" Markdown live preview
Plug 'suan/vim-instant-markdown'

" Snippets plugin
"Plug 'sirver/ultisnips'

" Airline status bar
Plug 'vim-airline/vim-airline'

" Sxhkd highlight
Plug 'kovetskiy/sxhkd-vim'

" Airline Themes
" Plug 'vim-airline/vim-airline-themes'

" Neosnippets

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
"Japanese input
Plug 'https://github.com/tyru/eskk.vim'

" Fish script support
Plug 'dag/vim-fish'

" WPGTK theme
Plug 'deviantfero/wpgtk.vim'

" Initialize plugin system
call plug#end()
syntax on


" Set color scheme
colorscheme wpgtkAlt

" Configure airline
let g:airline#extensions#tabline#enabled=1

" Spell checking
"map <F6> :setlocal spell! spelllang=en_us<CR>

autocmd VimLeave *.tex !texclear %

" Set line numbers
set number
set relativenumber

" Airline tabs
let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='wpgtk'

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Vimtex configuration
let g:tex_flavor='xelatex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdgm'
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine='xelatex'
let g:Tex_CompileRule_pdf='pdflatex --interaction=nonstopmode $*'

"" Ultisnips config
let g:UltiSnipsSnippetsDir="~/.vim/myUltiSnips"
"let g:UltiSnipsSnippetDirectories = ['myUltiSnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<space><space>"
"let g:UltiSnipsJumpBackwardTrigger = "<tab><tab>"

" Set conceal highlight colors
highlight Conceal guibg=NONE ctermbg=NONE

" Allow for italic comments
highlight Comment cterm=italic gui=italic

nmap <C-o> :NERDTreeToggle<CR>

" Detect sxhkd filetype
au BufRead,BufNewFile sxhkd*	set filetype=sxhkd

nnoremap zz :update<cr>
nnoremap <C-e> :x<cr>

nnoremap <buffer><nowait><silent> <C-w> :<c-u>silent call system('pandoc '.expand('%:p:S').' -o '.expand('%:p:r:S').'.pdf')<cr>

nnoremap <C-b> :UltiSnipsEdit<cr>

nnoremap <buffer><nowait><silent> <C-k> :<c-u>silent call system('echo require(rmarkdown); render(<c-r>%) R --vanilla')<cr>

" Compile R Markdown files
autocmd FileType rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" Restart sxhkd when writing any of the config files
autocmd BufWritePost *sxhkdrc.common !sxhkdreload
autocmd BufWritePost *sxhkdrc.desk !sxhkdreload
autocmd BufWritePost *sxhkdrc.laptop !sxhkdreload

map <leader>c :w! \| !compiler <c-r>%<CR>
"autocmd TextChanged,TextChangedI <buffer> silent write

" Some keybindings
inoremap jk <esc>
inoremap kj <esc>

let g:eskk#large_dictionary = {
			\ 'path': '/usr/share/skk/SKK-JISYO.L',
			\ 'sorted': 1,
			\ 'encoding': 'euc-jp'
			\}

filetype plugin indent on
