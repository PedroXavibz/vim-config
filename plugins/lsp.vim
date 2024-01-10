function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes

  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
  nmap <buffer> [d <plug>(lsp-previous-diagnostic)
  nmap <buffer> ]d <plug>(lsp-next-diagnostic)
  nmap <buffer> gD <plug>(lsp-declaration)
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gi <plug>(lsp-implementation)
  nmap <buffer> K <plug>(lsp-hover)
  nmap <buffer> <leader>rn <plug>(lsp-rename)
  nmap <buffer> <leader>ca <plug>(lsp-code-action)
  nmap <buffer> <leader>fm <plug>(lsp-document-format)

  nmap <buffer> <leader><Tab> <plug>(lsp-document-symbol)

  let g:lsp_format_sync_timeout = 1000
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_signs_delay = 100
let g:lsp_diagnostics_virtual_text_delay = 100
let g:lsp_diagnostics_highlights_delay = 100
let g:lsp_diagnostics_float_delay = 100

let g:lsp_diagnostics_float_cursor = 0
let g:lsp_diagnostics_virtual_text_insert_mode_enabled = 0

let g:lsp_diagnostics_signs_error = {'text': ''}
let g:lsp_diagnostics_signs_warning = {'text': ''}
let g:lsp_diagnostics_signs_hint = {'text': ''}
let g:lsp_diagnostics_signs_information = {'text': ''}
