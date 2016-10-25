dr-vimfiles-python
==================

Pedro's Python vimfiles for use with homeshick.

## Requirements

  - [homeshick][] - 
  - [dr-vimfiles][]
  - [rope][] - a python refactoring library
  - [Jedi][] - code completion tool.



## Includes:

  - [jedi-vim][] - Code completion.
  - [ropevim][] - Refactoring.

## Installation

### OS X with macports

Assuming you want to use _Python 3.5_ as your default:

  ```bash
  $ sudo port install python35 py35-readline
  $ sudo port select --set python python35
  $ sudo port select --set python3 python35
  $ sudo port select --set pip pip35
  $ sudo port install vim +python35 +ruby
  ```

### Python packages

  ```bash
  $ pip install --user rope jedi
  ```

### Install dr-vimfiles-python

  ```bash
  $ homeshick clone https://github.com/digitalrounin/dr-vimfiles-python.git
  ```


## Further Reading

  - Rope
    - [rope, a python refactoring library][rope]
    - [rope pypi][rope_pypi]
  - Ropevim
    - [ropevim, rope in vim][ropevim]
    - [ropevim Github][ropevim_github]




<!-- link ids -->
[rope]: http://rope.sourceforge.net/
[rope_pypi]: https://pypi.python.org/pypi/rope
[ropevim]: http://rope.sourceforge.net/ropevim.html
[ropevim_github]: https://github.com/python-rope/ropevim

[dr-vimfiles]: https://github.com/digitalrounin/dr-vimfiles

[python-rope]: https://github.com/python-rope/rope
[ropevim]: https://github.com/python-rope/ropevim

[Jedi documentation]: http://jedi.jedidjah.ch/en/latest/
[Jedi]: https://github.com/davidhalter/jedi
[jedi-vim]: https://github.com/davidhalter/jedi-vim

[homeshick]: https://github.com/andsens/homeshick
