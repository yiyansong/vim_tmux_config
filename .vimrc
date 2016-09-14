
    execute pathogen#infect()
    syntax on
    filetype plugin indent on
    syntax enable
    set background=dark
    colorscheme solarized

    " Backspace deletes like most programs in insert mode
    set backspace=2
    " Show the cursor position all the time
    set ruler
    " Display incomplete commands
    set showcmd
    " Set fileencodings
    set fileencodings=utf-8,bg18030,gbk,big5
    
    filetype plugin indent on

    " Softtabs.2 spaces
    set tabstop=2
    set shiftwidth=2
    set shiftround
    set expandtab

    " Display extra whitespace
    set list listchars=tab:»·,trail:·

    " Make it obvious where 80 characters is
    set textwidth=80
    set colorcolumn=+1

    " Numbers
    set number
    set numberwidth=5

    set matchpairs+=<:>
    set hlsearch

    " Highlight current line
    au WinLeave * set nocursorline nocursorcolumn
    au WinEnter * set cursorline cursorcolumn
    set cursorline cursorcolumn

    " NERD tree
    let NERDChristmasTree=0
    let NERDTreeWinSize=25
    let NERDTreeChDirMode=2
    let NERDTreeIgnore=['\~$','\.pyc$','.swp$']
    let NERDTreeeShowBookmarks=1
    let NERDTreeWinPos="left"
    " Automatically open a NERDTree if no files where specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    " Close vim if the only window left open is a NERDTree
    " Open a NERDTree while vim start up
    autocmd vimenter * NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " Open a NERDTree
    nmap <F5> :NERDTreeToggle<cr>

    " Tagbar
    let g:tagbar_width=25
    let g:tagbar_autofocus=1
    autocmd vimenter * Tagbar
    nmap <F6> :TagbarToggle<CR>

    " Syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    " NERD commenter
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1
    "
    " " Use compact syntax for prettified multi-line comments
    let g:NERDCompactSexyComs = 1
    "
    " " Align line-wise comment delimiters flush left instead of following code
    " indentation
     let g:NERDDefaultAlign = 'left'
    "
    " " Set a language to use its alternate delimiters by default
    let g:NERDAltDelims_java = 1
    "
    " " Add your own custom formats or override the defaults
    let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
    "
    " " Allow commenting and inverting empty lines (useful when commenting a
    " region)
    let g:NERDCommentEmptyLines = 1
    "
    " " Enable trimming of trailing whitespace when uncommenting
    let g:NERDTrimTrailingWhitespace = 1

    filetype plugin on

    " Nvim-R
    " Change Leader and LocalLeader keys:
    let maplocalleader = ","
    let mapleader = ";"

    " Use Ctrl+Space to do omnicompletion:
    if has("gui_running")
      inoremap <C-Space> <C-x><C-o>
    else
      inoremap <Nul> <C-x><C-o>
    endif

    " Press the space bar to send lines and selection to R:
    vmap <Space> <Plug>RDSendSelection
    nmap <Space> <Plug>RDSendLine

    " R output highlighted using current colorscheme
    let rout_follow_colorscheme = 1


    " config for Tmux
    let R_in_buffer = 0
    let R_applescript = 0
    let R_tmux_split = 1

