" Autosaving and loading folds
" These worked, but would give errors on unnamed files
"au BufWritePost,BufLeave,WinLeave ?* mkview
"au BufWinEnter ?* silent loadview
"
"This seems to work for everything.
set viewoptions-=options
augroup vimrc
  autocmd BufWritePost *
        \   if expand('%') != '' && &buftype !~ 'nofile'
        \|      mkview
        \|  endif
  autocmd BufRead *
        \   if expand('%') != '' && &buftype !~ 'nofile'
        \|      silent loadview
        \|  endif
augroup END

syntax on
set expandtab tabstop=2 shiftwidth=2
set background=dark
color desert
set nocompatible
if has("autocmd")
  filetype plugin indent on
else
  set autoindent
endif
"set smartindent
set showmatch
set guioptions=-T
set vb t_vb=
set ruler
set hls
set incsearch
set hlsearch
set virtualedit=all
set ignorecase smartcase
" Adds extra 'magic' to regex which just means they are normal regexs
nnoremap / /\v
nnoremap ? ?\v
set showcmd
if version >= 700
  set spl=en spell
  set nospell
endif
set wildmenu
set mouse=a
set number
inoremap jj <Esc>
inoremap kk <Esc>
inoremap hh <Esc>
inoremap llll <Esc>
" Two ls are very common...
inoremap <C-kPlus> <C-A>
inoremap <C-tK6> <C-A>
inoremap <C-kMinus> <C-X>
let g:clipbrdDefaultReg = '+'
nnoremap <silent> k gk
nnoremap <silent> j gj
set wrap

"Changes the vim directory to the directory the file is in
autocmd BufEnter * silent! lcd %:p:h

"Remove trailing whitespace
autocmd FileType python,ruby autocmd BufWritePre * :%s/\s\+$//e
match Todo /\s\+$/


au BufRead,BufNewFile *.rabl setf ruby

" Rspec highlighting out of rails projects
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

call pathogen#infect()

" For syntastic
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }

" For Powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2
set guifont=Ubuntu\ Mono\ for\ Powerline\ 10

