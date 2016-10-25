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
" UltiSnips
"----
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
