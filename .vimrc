"Appearance
syntax on
set number
set t_Co =256
set encoding=utf-8
colorscheme zenburn

"Pathogen plugin
execute pathogen#infect()

"vim-powerline plugin recommended settings
set encoding=utf-8
let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode
let g:airline_theme='badwolf'

filetype plugin indent on "Set language specifics from plugin
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Java Optimization
set shiftwidth=4
set tabstop=4
set expandtab

"Python Optimization
let g:pydiction_location = '~/.dotfiles/.vim/bundle/pydiction/complete-dict'
"remap snipmate's trigger key from tab to <C-J>
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

"Remapping
inoremap jk <Esc> 

"Save
nnoremap <c-s> :w<CR>

"OmniPopup navigation with "j" and "k"
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent>j <C-R>=OmniPopup('j')<CR>
inoremap <silent>k <C-R>=OmniPopup('k')<CR>

