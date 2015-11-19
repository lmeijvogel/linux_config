nmap <silent> <leader>nt :NERDTreeToggle<CR>
nmap <silent> <leader>nf :NERDTreeFind<CR>

let g:NERDTreeShowRelativeLineNumbers=1
let g:NERDTreeQuitOnOpen=1

" Tag list
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

" Rebuild tag list
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Ack.vim
nmap <leader>a :Ack! 
" Ack word under cursor
nmap <leader>A :Ack! <C-R><C-W><CR>

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Yaml tools
nmap <silent> <leader>u :YamlGoToParent<CR>
nmap <leader>y :YamlGetFullPath<CR>
nmap <leader>Y :YamlGoToKey 

" Buffet
nmap <silent> <leader>be :Bufferlist<CR>

" EasyAlign
vmap <Leader>e :EasyAlign=<CR>
vmap <Leader>E :EasyAlign

" Syntastic
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'javascript'],
                           \ 'passive_filetypes': ['puppet'] }
let g:syntastic_check_on_open=1

" Tagbar
nnoremap <F9> :TagbarToggle<CR>

" Screen
let g:ScreenImpl = 'Tmux'
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellInitialFocus = 'vim'
let g:ScreenShellQuitOnVimExit = 0
let g:ScreenShellTerminal = 'konsole'


if has("gui_running")
  colorscheme PaperColor
  set background=light

  if has("x11")
    set guifont=Inconsolata\ 11
  else
    set guifont=Consolas:h11:cANSI
  end
else
  set background=dark
endif

" Command-T
let g:CommandTCancelMap=['<Esc>', '<C-c>']

" The order is "reversed" (j is previous, k is next) to look more like
" left <-> right
nmap <C-A-k> :bn<CR>
nmap <C-A-j> :bp<CR>

let g:ctrlp_map = ''
nnoremap <leader>t :CtrlPCurWD<CR>

let g:startify_change_to_dir = 0

let g:no_turbux_mappings = 1
map <leader>s <Plug>SendTestToTmux
map <leader>S <Plug>SendFocusedTestToTmux
