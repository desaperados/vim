color ir_black                    " Default gui color scheme
set guifont=Inconsolata:h20       " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Start without the toolbar
set background=light              " Background.
set lines=25 columns=100          " Window dimensions.
set guioptions-=r                 " Don't show right scrollbar
set visualbell                    " Don't beep

if has("gui_macvim")
  
  macmenu &File.New\ Tab key=<nop>  " PeepOpen with Command-T
  map <D-t> <Plug>PeepOpen

  map <D-F> :Ack<space>             " Command-Shift-F for Ack
  
  " Command-][ to increase/decrease indentation
  vmap <D-]> >gv
  vmap <D-[> <gv
  
  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
  
  
endif