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

" <F6> to run unittest
autocmd filetype python nmap <F6> :up<CR>:!python -m unittest<CR>
autocmd filetype asm nmap <F6> :!python ./util/read.py<CR>

" <F7> to lint
autocmd filetype javascript nmap <F7> :!eslint "%" <CR>

" leader ; to add ; to end of line
autocmd filetype javascript nmap <leader>; mmA;<C-C>`m

" js comments
autocmd filetype javascript nmap <leader>; mmA;<C-C>`m
autocmd filetype javascript nmap <leader>// mmI//<C-C>`m
autocmd filetype javascript nmap <leader>/ mmI<Del><Del><C-C>`m
autocmd filetype javascript nmap <leader>* I/*<C-C>A*/

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

"space as leader
nmap <space> <leader>

" insert new line without entering insert mode
nmap <CR> o<C-C>k
nmap <BS> O<C-C>j

" theme and colors
set t_Co=256
colorscheme pablo
"colorscheme industry
"colorscheme koehloe
"hi Visual ctermfg=3 ctermbg=0 cterm=bold,underline

" disable key to form habit
imap <BS> *
