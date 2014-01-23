"Appearance
syntax on
set number
set t_Co =256
colorscheme  zenburn

"Pathogen plugin
execute pathogen#infect()

"vim-powerline plugin recommended settings
set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1

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
