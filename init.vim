" encoding
set encoding=utf-8
scriptencoding utf-8

" row-number
set number

" indent & tab
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

" search
set incsearch
set ignorecase
set smartcase
set hlsearch

" jump
set showmatch

" command
set wildmenu

" dein -----------
if !&compatible
	set nocompatible
endif

"" dein settings {{{
""" dein auto install
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.config/nvim') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
	call system('git clone https://github.com/Shougo/dein.vim' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
""" Plugin load & Create cache
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	call dein#load_toml(s:toml_file)
	call dein#end()
	call dein#save_state()
endif
""" Plugin Autoinstall
if has('vim_starting') && dein#check_install()
	call dein#install()
endif
"" }}}
"dein -----------
