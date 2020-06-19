" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
syntax on
set nocompatible " don't make vim vi-compatible " 
set noerrorbells " no bells " 
set nu " show line numbers "
set nowrap
set incsearch
set ignorecase " ignore case in search patterns "
set smartcase " override ignorecase if the search pattern includes uppercase "
set cursorline " show line for cursor "
set hlsearch " search highlighting "
set scrolloff=3 " keep cursor 3 lines from top and bottom " 
set wildmenu " enables tab completion for command menu "
set synmaxcol=2500 " limit syntax highlighting for very long lines "
set history=5000
set nostartofline " don't reset cursor to start of line "

set laststatus=2 " show status bar. 2 for always, 1 for only with 1+ windows "
set ruler " show cursor position "
set showmode " show current mode "
set showcmd " show command being typed "
set report=0 " show lines changed "

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" auto close brackets "
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" enable backspace in insert "
set backspace=indent,start

set undodir=~/.vim/undodir
set undofile

" install plugvim from curl in first line of this file "
" :w then :source % "
" then run :PlugInstall "
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme nord
set background=dark

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

nnoremap<C-p> :UndotreeToggle<CR>

" Nerdtree settings  "
nnoremap <C-o> :NERDTreeToggle<CR>
" NERDTress File highlighting "
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('js', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'green', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('py', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('java', 'magenta', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
