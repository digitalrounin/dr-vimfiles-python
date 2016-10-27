"----
" python-syntax
"----
let python_highlight_all = 1


"----
" syntastic
"----
" python   - compiler
" pylint   - Python linter
" flake8 is a wrapper around these tools:
"     pyflakes - More error analysis
"     pycodestyle - formally known as pep8
"     mccabe - Ned’s script to check McCabe complexity.
let g:syntastic_python_checkers = ['python', 'pylint', 'flake8']


"----
" YouCompleteMe
"----
let g:ycm_add_preview_to_completeopt=1
" let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_autoclose_preview_window_after_insertion=1


"----
" UltiSnips
"----
let g:UltiSnipsListSnippets="<C-F>"
let g:UltiSnipsExpandTrigger="<C-D>"
