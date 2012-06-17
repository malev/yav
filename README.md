VIM FILES for malev
===================
This are my vim files, I use them to write almost anything, from ruby, rails, python apps
to blog posts and even some of my Colleague works.*Enjoy!*

Install
-------
To install just run sh install.sh

Plugins installed
-----------------

* [ack.vim](http://www.vim.org/scripts/script.php?script_id=2572)
* [AutoClose](http://www.vim.org/scripts/script.php?script_id=1849)
* [autocorrect.vim](http://www.vim.org/scripts/script.php?script_id=2429) 
* [Comments](http://www.vim.org/scripts/script.php?script_id=1528)
* [FuzzyFinder](http://www.vim.org/scripts/script.php?script_id=1984)
* [grep.vim](http://www.vim.org/scripts/script.php?script_id=311)
* [NERDTree](http://www.vim.org/scripts/script.php?script_id=1658)
* [rails.vim](https://github.com/tpope/vim-rails)
* [SearchComplete](http://www.vim.org/scripts/script.php?script_id=474)
* [SnipMate](http://www.vim.org/scripts/script.php?script_id=2540)
* [SuperTab](http://www.vim.org/scripts/script.php?script_id=1643)
* [Surround](http://www.vim.org/scripts/script.php?script_id=1697)
* [Syntastic](http://www.vim.org/scripts/script.php?script_id=2736)
* [Tabular](https://github.com/godlygeek/tabular)
* [Tasklist.vim](http://www.vim.org/scripts/script.php?script_id=2607)
* [Vimerl](http://www.vim.org/scripts/script.php?script_id=3743)
* [ZenCoding.vim](http://www.vim.org/scripts/script.php?script_id=2981)

ACK
---
You need to install ack first on your machine. If you have an Ubuntu distro you can do:

> sudo apt-get install ack-grep 

And in ports:

> sudo port install p5-app-ack 

AutoClose
---------
Inserts matching bracket, paren, brace or quote.

Autocorrect
-----------
Automatically autocorrect misspelling or typos. Works without any commands.

Comments
--------
Select some text and hit: Ctrl + C to comment and Ctrl + X to uncomment.

FuzzyFinder
-----------
Check [this](http://www.ezequielmarquez.com.ar/2011/10/fuzzyfinder-vim.html) to use it.

Grep
----
...

NERDTree
--------
[Video instructions](http://www.youtube.com/watch?v=CPu9mDpSYj0). With F3 you will shot NERDTree.
Also you can hit ? to see the help information.

SuperTab
--------
Ctrl + T -> Creates a new tab. With Ctrl + Left or Ctrl + Right you can move thought the tabs.

Syntastic
---------
Syntastic is a syntax checking plugin that runs buffers through external syntax 
checkers as they are saved and opened. If syntax errors are detected, the user 
is notified and is happy because they didn't have to compile their code or 
execute their script to find them. 

Tabular
-------
It works as in this episode of [Vimcasts](http://vimcasts.org/episodes/aligning-text-with-tabular-vim/). `Leader + a=` or `Leader + a:` in normal and visual mode. If you want to use Tabularize with a different character you can set: `:Tabularize \|` or `:Tabularize \|\zs` in visual model. In the example we are aligning against `|` (pipe) character.

VimErl
------
Vimerl is a plugin for programming in Erlang. It provides several nice features to make your life easier when writing code.

* Syntax highlighting 
* Code indenting 
* Code folding 
* Code omni completion 
* Syntax check 
* Compiler support with QuickFix commands 
* Code skeletons for the OTP behaviours 
* Pathogen support (http://github.com/tpope/vim-pathogen)

Credits
-------
Thanks to all my 3 users (including myself).

* [malev -> myself](http://twitter.com/malev).
* [Martin](http://twitter.com/maku_martin) who is the new installer maintainer.
* [Pablo](http://twitter.com/pabloroz) who is the boss.

TODO
----

* Install: https://github.com/tpope/vim-fugitive
* Make the installer work fine
* Write the rails.vim instructions

SHORTCUTS
---------

Removing unused white spaces as in [Jonathan's blog](http://technotales.wordpress.com/2010/03/31/preserve-a-vim-function-that-keeps-your-state/). It works with `_$`.

License
-------
Copyright (c) Marcos Vanetta [blog](http://blog.malev.com.ar). Distributed under the same terms as Vim itself.
