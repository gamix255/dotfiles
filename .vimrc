syntax on

if has("persistent_undo")
    set undodir=~/.undodir
    set undofile
endif


call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
call plug#end()


nnoremap <F5> 'UndotreeToggle<CR>
