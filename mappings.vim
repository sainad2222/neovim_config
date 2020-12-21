imap ii <esc>

nmap <leader>y ggVG"+y''
nnoremap d "_d
vnoremap d "_d
vnoremap <leader>p p
vnoremap p "_dP
map<C-a> ggVG
map<C-c> "+y

nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <leader>l :let @/=""<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap < <gv
vnoremap > >gv

map <space><space> gt
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

nnoremap <leader>8 :resize +5<CR>
nnoremap <leader>2 :resize -5<CR>
nnoremap <leader>4 :vertical resize +5<CR>
nnoremap <leader>6 :vertical resize -5<CR>

noremap <F3> :Autoformat<CR>
inoremap <F5> <esc>
inoremap <F6> <esc>
" Custom running py and cpp files for CP
if filereadable(expand('%:p:r'))
    autocmd filetype python nnoremap <F5> :Autoformat<CR> :w <CR>:!python3 % < %:p:r<CR>
    autocmd filetype cpp nnoremap <F5> :Autoformat<CR> :w <CR>:!g++ --std=c++17 % -o testtt && ./testtt < ~/edu/cp/test3<CR>:!rm -f testtt<CR>
    autocmd filetype python nnoremap <F6> :w <CR>:sp<CR>:term python3 %<CR>
    autocmd filetype cpp nnoremap <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>
else
    autocmd filetype python nnoremap <F5> :echo 'No input file'<CR>
    autocmd filetype cpp nnoremap <F5> :echo 'No input file'<CR>
    autocmd filetype python nnoremap  <F6> :w <CR>:sp<CR>:term python3 %<CR>
    autocmd filetype cpp nnoremap <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>
endif
autocmd TermOpen * startinsert

