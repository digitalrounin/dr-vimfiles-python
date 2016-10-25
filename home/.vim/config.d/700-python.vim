"----
" python-syntax
"----
let python_highlight_all = 1

"----
" syntastic
"----
" pep8     - PEP8 conformity
" pylint   - Python linter
" pyflakes - More error analysis
let g:syntastic_python_checkers = ['python', 'pylint', 'flake8']
