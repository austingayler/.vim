set runtimepath+=~/.vim/
call plug#begin()
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/vim-scripts/mru.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'https://github.com/mhartington/oceanic-next'
Plug 'larsbs/vimterial_dark'
Plug 'https://github.com/prettier/vim-prettier'
Plug 'powerline/powerline'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
call plug#end()
try
source ~/.vim/my_configs.vim
source ~/.vim/plugins.vim

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

catch
endtry
