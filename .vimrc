"""""""""""""""""""""""""""""""""""
""""                          """""
""""        Appearance        """""
""""                          """"" 
"""""""""""""""""""""""""""""""""""
syntax on
set number
set t_Co =256
set encoding=utf-8
colorscheme zenburn

"""""""""""""""""""""""""""""""""""
""""                          """""
""""         Plugins          """""
""""                          """"" 
"""""""""""""""""""""""""""""""""""
"Pathogen plugin

execute pathogen#infect()
execute pathogen#helptags()

"vim-powerline plugin recommended settings
set encoding=utf-8
let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode
let g:airline_theme='badwolf'

filetype plugin indent on "Set language specifics from plugin
filetype plugin on

"""""""""""""""""""""""""""""""""""
""""                          """""
""""         Language         """""
""""                          """"" 
"""""""""""""""""""""""""""""""""""
"Java Optimization
set shiftwidth=4
set tabstop=4
set expandtab

"Python Optimization
let g:pydiction_location = '~/.dotfiles/.vim/bundle/pydiction/complete-dict'


"""""""""""""""""""""""""""""""""""
""""                          """""
""""       Key Mappings       """""
""""                          """"" 
"""""""""""""""""""""""""""""""""""
"remap snipmate's trigger key from tab to <C-J>
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

"Remapping
inoremap jk <Esc> 

"Format file
nnoremap <C-Alt-l> :normal gg=G<C>

"Save
nnoremap <C-s> :w<CR>

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

function! DoPrettyXML()
    " save the filetype so we can restore it later
    let l:origft = &ft
    set ft=
    " delete the xml header if it exists. This will
    " permit us to surround the document with fake tags
    " without creating invalid xml.
    1s/<?xml .*?>//e
    " insert fake tags around the entire document.
    " This will permit us to pretty-format excerpts of
    " XML that may contain multiple top-level elements.
    0put ='<PrettyXML>'
    $put ='</PrettyXML>'
    silent %!xmllint --format -
    " xmllint will insert an <?xml?> header.
    it's easy enough to delete
    " if you don't want it.
    " delete the fake tags
    2d
    $d
    " restore the 'normal'
    indentation, which is one extra
    level
    " too deep due to the extra tags we wrapped around the document.
    silent %<
    " back to home
    1
    " restore the filetype
    exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()
