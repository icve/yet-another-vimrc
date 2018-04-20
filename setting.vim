syntax enable
set tabstop=4
set expandtab
set autoindent
set cindent
set shiftwidth=4
set relativenumber
set number
set cursorline
set showmatch
set showcmd
set hlsearch
set incsearch
set autoread
set ruler
set smarttab
set wrap
set ignorecase smartcase

" theme and colors
set t_Co=256
colorscheme pablo
"colorscheme industry
"colorscheme koehloe
"hi Visual ctermfg=3 ctermbg=0 cterm=bold,underline


"highlight trailing white spaces
highlight TrailingWhiteSpaces ctermbg=red guibg=red
match TrailingWhiteSpaces /\s\+$/

" <F5> save and to run file
autocmd filetype c nmap <F5> :up<CR>:!gcc "%" && ./a.out<CR>
autocmd filetype vim nmap <F5> :up<CR>:source "%"
autocmd filetype asm nmap <F5> :up<CR>:!./compile_upload.sh %<CR>
autocmd filetype html nmap <F5> :up<CR>:!google-chrome "%" &<CR>
autocmd filetype python nmap <F5> :up<CR>:!python "%"<CR>
autocmd filetype javascript nmap <F5> :up<CR>:!node "%"<CR>
autocmd filetype sh nmap <F5> :up<CR>:! bash "%"<CR>
autocmd filetype java nmap <F5> :up<CR>:! javac *.java<CR> :!java $(basename % .java) <CR>

" <F6> to run unittest
autocmd filetype python nmap <F6> :up<CR>:!python -m unittest<CR>
autocmd filetype asm nmap <F6> :up<CR>:!python ./util/read.py<CR>
autocmd filetype c nmap <F6> :up<CR>:make clean<CR>:make<CR>
" jast compile
autocmd filetype java nmap <F6> :up <CR>:!javac *.java<CR>

" <F7> to lint
autocmd filetype javascript nmap <F7> :!eslint "%" <CR>

" leader ; to add ; to end of line
autocmd filetype javascript nmap <leader>; mmA;<C-C>`m
autocmd filetype c nmap <leader>; mmA;<C-C>`m
autocmd filetype arduino nmap <leader>; mmA;<C-C>`m

" js comments
autocmd filetype javascript nmap <leader>; mmA;<C-C>`m
autocmd filetype javascript nmap <leader>// mmI//<C-C>`m
autocmd filetype javascript nmap <leader>/ mmI<Del><Del><C-C>`m
autocmd filetype javascript nmap <leader>* I/*<C-C>A*/

" asm comment
autocmd filetype asm nmap <leader>// mmI;<C-C>`m
autocmd filetype asm nmap <leader>/ mm^x`m

"noexpand tab in make
autocmd FileType make setlocal noexpandtab

" 79 char line length limit highlight
set colorcolumn=79

" leader select and quote
vmap <leader>" c"<C-R>""<C-C>
vmap <leader>' c'<C-R>"'<C-C>

" leader select and add bracket
vmap <leader>( c(<C-R>")<C-C>
vmap <leader>[ c[<C-R>"]<C-C>

"show command hostory
nmap <F2> :!<Enter>

" save a file with S
nmap S :up<CR>

" CTRL-p to open file broswer
nmap <C-P> :Explore<Enter>

" vertically split and edit .
nmap <leader>e <C-W>v<C-W>l:e .<CR>

"space as leader
nmap <space> <leader>
autocmd filetype html nmap <leader>; mmA;<C-C>`m

" insert new line without entering insert mode
" nmap <CR> o<C-C>k
" nmap <BS> O<C-C>j


" disable key to form habit
imap <BS> *
