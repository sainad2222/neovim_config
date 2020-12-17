" autopairs configs
au FileType python let b:AutoPairs = {}

" autosave configs
let g:auto_save        = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]

" NERDcommenter configs
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" sneak motion configs
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S

" supertab configs
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "<c-n>"

" undotree configs
nnoremap U :UndotreeToggle<CR>

" gruvbox configs
colorscheme gruvbox
set background=dark
