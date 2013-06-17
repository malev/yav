Yet Another VIMRC
===================

                _                          _    _                            _
    /\_/\  ___ | |_    __ _  _ __    ___  | |_ | |__    ___  _ __   /\   /\ (_) _ __ ___   _ __   ___
    \_ _/ / _ \| __|  / _` || `_ \  / _ \ | __|| `_ \  / _ \| `__|  \ \ / / | || `_ ` _ \ | `__| / __|
     / \ |  __/| |_  | (_| || | | || (_) || |_ | | | ||  __/| |      \ V /  | || | | | | || |   | (__
     \_/  \___| \__|  \__,_||_| |_| \___/  \__||_| |_| \___||_|       \_/   |_||_| |_| |_||_|    \___|

                                                                                 this time by malev

This is my personal vimrc file. It's based on [fisavim](https://github.com/fisadev/fisa-vim-config), but with an **agnostic** approach. I use this configuration to write code in javascript, ruby and python on my everyday work. I also use it on every VPS under my control.

Install
-------

    curl https://raw.github.com/malev/yav/master/tool/install.sh | sh

Requirements
------------
In order to use this Vimrc file you will need ctags and Ack. To install them on Ubuntu just run:

    sudo apt-get install exuberant-ctags
    sudo apt-get install ack-grep

Default configuration
---------------------

### Vim configuration
* **ColorScheme**: If the terminal has full color support it will use [solarized](http://ethanschoonover.com/solarized), just because it's beatufil! If you don't have full color support then it will switch to , just because it's beatufil! If you don't have full color support then it will switch to [wombat](http://dengmao.wordpress.com/2007/01/22/vim-color-scheme-wombat/).
* **Custom functions**: It has some customs functions, for instance it will jump to the last cursor position if the file has already been opened. You can toggle between normal and paste modes with **F2**.
* **Userful variables**: As any normal Vim, the current filename is stored on `%`, but here you can access to the current path with  `%%` too.
* **Tabs navigations**: You can create a new tab with `tt`, move to the next tab with `tn`, go back with `tp` and move any tab to any position with `tm` and the position you want.
* **Windows**: As always you can create new panels with: `:split` and `:vsplit`, or the short ways: `:sp` or `:vp`. But to surf arround the panels you can use the shortkeys: `Ctrl + h`, `Ctrl +j`, `Ctrl + k` and `Ctrl + l`. Which is much faster than the traditional `Ctrl + w` command.
* Save as **sudo** with: `:w!!`
* Common typos support: WQ, Wq, W and Q work as they lower case friends.
* Switch between the last 2 files on the buffer: `,,`

### Plugins configuration

*pending*

New to Vim?
-----------

If you are new to vim there are a lot of places where you can start learning about this great tool. You should start watching [this](http://www.youtube.com/watch?v=UlREhZ-orlk&feature=player_embedded) video, you can also read [this](http://pragprog.com/book/dnvim/practical-vim) by Drew Neil or, finally you could watch [this](https://peepcode.com/products/smash-into-vim-i) screencasts serie by Dan Benjamin. Anyway, there is really a lot of vim stuff around the web. My recommendation is that you start with baby steps.

Plugins installed
-----------------

* [Vundle](https://github.com/gmarik/vundle)
* [NerdTree](https://github.com/scrooloose/nerdtree)
* [Comments](https://github.com/vim-scripts/comments.vim)
* [TagBar](http://majutsushi.github.io/tagbar/)
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

License
-------
The MIT License (MIT)

Copyright (c) 2013 Marcos Vanetta, aka [malev](http://malev.com.ar)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
