let mapleader=";"
nmap LB 0
nmap LE $
nmap <Leader>M %
filetype on
filetype plugin on
set nocompatible
autocmd BufWritePost $MYVIMRC source $MYVIMRC
nmap <Leader>m :wa<CR>:make<CR><CR>:cw<CR>

"vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-latex/vim-latex'
Plugin 'xuhdev/vim-latex-live-preview'
call vundle#end()
filetype plugin indent on

set background=light
colorscheme solarized
let g:solarized_termcolors=256
let g:Powerline_colorscheme='solarized256'

set laststatus=2
set ruler
set number
set cursorline
set cursorcolumn
set hlsearch
syntax enable
syntax on
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"highlight
syntax keyword cppSTLtype initializer_list

"indent
filetype indent on
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"fold
set foldmethod=syntax
set nofoldenable

"fswitch
nmap <silent> <Leader>sw :FSHere<cr>

"tagbar
nmap <F8> :TagbarToggle<CR>
let tagbar_left=1
let tagbar_width=32
let g:tagbar_compact=1
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
     \ }
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

"UltiSnips
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"YouCompleteMe
let g:ycm_global_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>*'
set completeopt-=preview
set completeopt=longest,menu
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
inoremap <leader>; <C-x><C-o>

"NERDTree
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeTogglereeWInSize=25
let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

"MiniBufExplorer
map <Leader>bl :MBEToggle<CR>
map <C-Tab> :MBEn<CR>
map <C-S-Tab> :MBEbp<CR>

"vim-latex
filetype plugin on
set shellslash
filetype indent on
let g:tex_flavor='latex'

"vim-latex-live-preview
let g:livepreview_engine = 'xelatex'
map <Leader>pv :LLPStartPreview<CR>

"wildfile
