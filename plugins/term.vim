autocmd TerminalWinOpen *
  \ if &buftype == 'terminal' |
  \   resize 12 |
  \   setlocal termwinsize=0x140 |
  \   setlocal nowrap |
  \ endif
