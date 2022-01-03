syntax on

set termguicolors

set background=dark
color atom-dark-256


" let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch']
let g:airline_theme='badwolf'
let g:airline#extensions#branch#enabled=1
" let g:airline#extensions#tabline#enabled = 1

hi Normal guibg=NONE ctermbg=NONE


noremap <C-a> :set nu!<CR>

" Toggle background transparency
let t:isTransparent = 0
function! BGToggleTransparency()
  if t:isTransparent == 0
    hi Normal guibg=#111111 ctermbg=black
    set background=dark
    let t:isTransparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:isTransparent = 0
  endif
endfunction

map <f1> :call BGToggleTransparency()<CR>  
