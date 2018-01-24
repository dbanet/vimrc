""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

" tmp directories
set dir=~/tmp,/var/tmp,/tmp,.

" misc
set hidden
set ts=4 noet sw=4
set laststatus=2
syntax on

" plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'           " plugin manager
Plugin 'Shougo/denite.nvim'             " buffer explorer
Plugin 'Garethp/vdebug'                 " debugger
Plugin 'moll/vim-bbye'                  " close buffer w/o closing window
Plugin 'tpope/vim-commentary'           " comment code in many languages
Plugin 'rayburgemeestre/phpfolding.vim' " folding methods for PHP
Plugin 'StanAngeloff/php.vim'           " PHP syntax
Plugin 'ciaranm/detectindent'           " set ts, et and sw automatically
Plugin 'itchyny/lightline.vim'          " status line
call vundle#end()
filetype plugin indent on

" misc
let mapleader=" "
command W w | !git a %
command Wq w | !git a % | q
command Wc w | !git a % | close

" Shift-Y to yank current file path
:nmap Y :let @"=expand("%")

" expression %% expands to current file's directory
cabbr <expr> %% expand("%:p:h")

" Shougo/denite.nvim
call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal', '<Esc>', '<NOP>', 'noremap')
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<Tab>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<S-Tab>', '<denite:move_to_previous_line>', 'noremap')

nnoremap <Leader><Space> :Denite buffer
nnoremap <Leader> :Denite file_rec

" moll/vim-bbyeA
nnoremap <Leader>q :Bdelete
nnoremap <Leader>d :Bdelete

" ciaranm/detectindent
" preferred settings when not autodetected
let g:detectindent_preferred_expandtab  = 0
let g:detectindent_preferred_indent     = 4
let g:detectindent_max_lines_to_analyse = 1024
let g:detectindent_preferred_when_mixed = 1
" autodetect on buffer read
autocmd BufReadPost * :DetectIndent | set smartindent

" itchyny/lightline.vim
set noshowmode

" netrw
nnoremap <Leader>e :Explore

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let @j="/btn btn_buy^M\"iPn>>o^D<%}%>^[^J"
let @k="/btn btn_buy^M\"oPn>>o^D<%}%>^[^J"
let @u="data-is-alco-item=\"<?=$arElement['PROPERTIES']['IS_ALCO_ITEM'][\"VALUE\"]?>\"^J"
