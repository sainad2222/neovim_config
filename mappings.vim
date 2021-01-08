imap ii <esc>

nmap <leader>y ggVG"+y''
nnoremap d "_d
vnoremap d "_d
nnoremap c "_c
nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S
vnoremap <leader>p p
vnoremap p "_dP
map<C-a> ggVG
map<C-c> "+y
map<C-b> :Vex<CR>

nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <leader>l :let @/=""<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap < <gv
vnoremap > >gv

map <S-right> gt
map <S-left> gT
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
inoremap <F12> <esc>

" Custom running py and cpp files for CP
autocmd filetype python,cpp nnoremap <F5> :Autoformat<CR> :w <CR>:sp<CR>:term cf test %<CR>
autocmd filetype python,cpp nnoremap <F12> :term cf submit -f %
autocmd filetype python nnoremap <F6> :w <CR>:sp<CR>:term python3 %<CR>
autocmd filetype cpp nnoremap <F6> :w <CR>:sp<CR>:term g++ --std=c++17 % -o testtt && ./testtt && rm -f testtt<CR>

autocmd TermOpen * startinsert

" Toggle transparency
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi SignColumn guibg=NONE ctermbg=NONE
highlight Normal ctermbg=NONE guibg=NONE
let g:is_transparent = 1
function! Toggle_transparent()
    if g:is_transparent == 0
        highlight Normal ctermbg=NONE guibg=NONE
        highlight SignColumn ctermbg=NONE guibg=NONE
        let g:is_transparent = 1
    else
        set background=dark
        let g:is_transparent = 0
    endif
endfunction
autocmd vimenter * call Toggle_transparent()
nnoremap <silent> <C-t> :call Toggle_transparent()<CR>
