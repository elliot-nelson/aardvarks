" settings
colorscheme smyck
set tabstop=2
set shiftwidth=2
set guifont=Menlo\ Regular:h12
syntax on
filetype plugin indent on
set noswapfile

" open a blank tab with <t>
noremap t :tabnew<CR>

" open/close nerdtree
noremap <leader>t :NERDTreeToggle<CR>

" toggle between tabs with <m> and <shift-m>
noremap m :tabnext<CR>
noremap M :tabprev<CR>

" close open tab
noremap c :tabclose<CR>

" open edit line (no-command-t support)
noremap e :e<SPACE>

" open edit line (command-t support)
noremap f :CommandT<CR>

" switch to specific tab numbers with Command-number
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
noremap <D-8> :tabn 8<CR>
noremap <D-9> :tabn 9<CR>
" command-0 goes to the last tab
noremap <D-0> :tablast<CR>

" pathogen
execute pathogen#infect()
