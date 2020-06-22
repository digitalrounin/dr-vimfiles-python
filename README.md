
:warning: _**This project has been superseded by
[pedrohdz/dotfiles-vim](https://github.com/pedrohdz/dotfiles-vim).**_ :warning:

# dr-vimfiles-python

Pedro's Python vimfiles for use with homeshick.


## Requirements

  - [homeshick][] - Git dotfiles synchronizer written in bash.  Go to project
    page for instructions.
  - [dr-vimfiles][] - Go to project page for instructions.


## Includes

  - [UltiSnips][] The ultimate snippet solution for Vim. Send pull requests to
    SirVer/ultisnips!
    - [vim-snippets][] - vim-snipmate default snippets (Previously
      snipmate-snippets)
  - [python-syntax][] - Enhanced version of the original Python syntax
    highlighting script.  (***TODO*** - reevaluate, confirm it is relavant.)
  - [salt-vim][] - Vim files for working on SaltStack files.
  - [Vim-Jinja2-Syntax][] - An up-to-date jinja2 syntax file.
  - [vim-python-pep8-indent][] - This small script modifies Vim’s indentation
    behavior to comply with PEP8 and my aesthetic preferences.
  - [vim-virtualenv][] - "When using :python or :!python, it will only have
    access to the environment outside of any virtualenvs. If you're working
    with packages that are only installed in a virtualenv, they will not be
    available to Vim."
  - [yaml-vim][] - YAML Highlight script for VIM editor.
  - [jedi-vim][] - Code completion.
    - [Jedi documentation][]
    - [Jedi][] - _Jedi_ on GitHub.
  - [ropevim][] - Refactoring.
    - [python-rope][] - Documentation.
  - [YouCompleteMe][] - Requires manual installation.
  - [digitalrounin/vim-yaml-folds][]


## Installation

### OS X with macports

Assuming you want to use _Python 3.5_ as your default:

  ```bash
  $ sudo port install python35 py35-readline
  $ sudo port select --set python python35
  $ sudo port select --set python3 python35
  $ sudo port select --set pip pip35
  $ sudo port install vim +python36 +ruby23 +huge +cscope
  ```

The `+huge` and `+cscope` are not required, but I like having them.

Add the following to your `~/.profile` on _OS X_:

  ```bash
  # OS X - Local Python stuff
  if [ -d "$HOME/Library/Python/3.5/bin" ]; then
    export PATH="$HOME/Library/Python/3.5/bin:$PATH"
  fi
  ```

If you would like to include _JavaScript_ completion include:

  ```bash
  $ sudo port install nodejs6 npm3
  ```


### Python packages

  ```bash
  $ pip install --user rope jedi flake8 pylint
  ```

### Install dr-vimfiles-python

  ```bash
  $ homeshick clone https://github.com/digitalrounin/dr-vimfiles-python.git
  $ homeshick link
  ```

Might be a good idea to delete old links:

  ```bash
  $ find ~/.vim -xtype l -print
  $ find ~/.vim -xtype l -print -delete
  ```

### Installing YouCompleteMe

[YouCompleteMe][] is being installed directly into `~/.vim/bundle/`, bypassing
_homeshick_.  _YouCompleteMe_ is composed of over 8,000 files, making it too
large to manage via symlinks.

  ```bash
  $ cd ~/.vim/bundle
  $ git clone https://github.com/Valloric/YouCompleteMe.git
  $ cd ~/.vim/bundle/YouCompleteMe/
  $ git submodule update --init --recursive
  ```

The installation is done with `install.py`, and not `install.sh`.  The latter
is being deprecated and dafaults to a _Python 2.x_ installation:

  ```bash
  $ ./install.py --clang-completer --tern-completer
  ```

For build with other supported languages, check the [YouCompleteMe OS X
installation][].  There is support for: _C#_m _TypeScript_, _GoLang_ and
others.


## Todo list

  - _Rope_ does not support _Python 3_.  Revisit [ropevim][].




[YouCompleteMe]: http://valloric.github.io/YouCompleteMe/
[YouCompleteMe on GitHub]: https://github.com/Valloric/YouCompleteMe
[YouCompleteMe OS X installation]: https://github.com/Valloric/YouCompleteMe/blob/master/README.md#mac-os-x

[homeshick]: https://github.com/andsens/homeshick
[dr-vimfiles]: https://github.com/digitalrounin/dr-vimfiles

[UltiSnips]: https://github.com/SirVer/ultisnips
[Vim-Jinja2-Syntax]: https://github.com/Glench/Vim-Jinja2-Syntax
[python-syntax]: https://github.com/hdima/python-syntax
[salt-vim]: https://github.com/saltstack/salt-vim
[vim-python-pep8-indent]: https://github.com/hynek/vim-python-pep8-indent
[vim-snippets]: https://github.com/honza/vim-snippets
[vim-virtualenv]: https://github.com/jmcantrell/vim-virtualenv
[yaml-vim]: https://github.com/ingydotnet/yaml-vim

[python-rope]: https://github.com/python-rope/rope
[ropevim]: https://github.com/python-rope/ropevim

[Jedi documentation]: http://jedi.jedidjah.ch/en/latest/
[Jedi]: https://github.com/davidhalter/jedi
[jedi-vim]: https://github.com/davidhalter/jedi-vim

[digitalrounin/vim-yaml-folds]: https://github.com/digitalrounin/vim-yaml-folds
