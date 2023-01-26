source $HOME/.config/nvim/vim-plug/plugins.vim 
filetype plugin indent on
"set ts=2 sts=2 sw=2 et si si
set rnu "set relative new line
set scrolloff=999

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

set termguicolors
colorscheme gruvbox
"colorscheme tokyonight-storm
"colorscheme tokyonight-night
"colorscheme tokyonight-moon
"colorscheme catppuccin
"set background=true

"Extra
let g:gruvbox_italic='1'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'
let g:gruvbox_termcolors='256'
let g:AutoPairsFlyMode=0

"inoremap <c-b> <Esc>:NERDTreeToggle<cr>
"nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
nmap <leader>nt :NERDTreeToggle<cr>

"Copying across sytem clipboard
let mapleader="\<Space>"
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

"Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

"auto commenting c/c++ style
vnoremap <leader>c :s/^\(.*\)/\/*\1*\/<cr>

"Hit space twice to remove search highlights
noremap <silent> <space> :silent noh<Bar>echo<CR>

"visual mode move the selection
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Telescopic bindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fs <cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<cr>
noremap <leader>fs <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy="ascending"})<cr>
"nnoremap <leader>fs <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_ivy())<cr>
nnoremap <leader>fd <cmd>Telescope find_files cwd=~/<cr>  

"Auto save for fold state
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

"terminal split below, resize and start insert mode
nnoremap <leader>t :sp<bar>resize7<bar>term<CR>
autocmd TermOpen * startinsert
tnoremap <Esc> <C-\><C-n>

"Diagnostic error appearance
hi! CocErrorHighlight guifg=#3498DB
hi! CocErrorSign guifg=#3498DB
hi! CocErrorFloat guifg=#40E0D0 

"spellcheck
noremap <F5> :setlocal spell! 

"ariline garbage at bottom-right 
let g:airline#extensions#whitespace#enabled = 0

"Telescopic configuration

lua << EOF
require('telescope').setup{
defaults = {
  prompt_prefix = "$"
  },
pickers = {
  find_files = {
    -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
    find_command = { "rg", "--files", "--hidden", "-L","--glob", "!**/.git/*" },
    }
  }
}
require('telescope').load_extension('fzf')
EOF
