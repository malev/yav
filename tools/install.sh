if [ -d ~/.yav ]; then
  echo "\033[0;33mYou already have Yav installed.\033[0m You'll need to remove ~/.yav if you want to reinstall it"
  exit 1
fi

if which vim > /dev/null; then
  echo "\033[0;33mYou don't have Vim installed. \033[0m"
fi

echo "\033[0;34mCloning Yav\033[0m"
hash git >/dev/null && /usr/bin/env git clone git://github.com/malev/yav.git ~/.yav || {
  echo "git not installed"
  exit
}

if [ -d ~/.vimrc ]; then
  echo "\033[0;34m.vim has been renamed as .vim.old\033[0m"
  mv ~/.vim .vim.old;
fi

if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
  echo "\033[0;34m.vimrc has been renamed as .vimrc.old\033[0m"
  mv ~/.vimrc ~/.vimrc.old
fi

if [ -f ~/.gvimrc ] || [ -h ~/.gvimrc ]; then
  echo "\033[0;34m.gvimrc has been renamed as .gvim.old\033[0m"
  mv ~/.gvimrc ~/.gvimrc.old
fi

cp ~/.yav/vimrc ~/.vimrc;

echo "\033[1;32m"'            _                          _    _                            _                        '"\033[0m"
echo "\033[1;32m"'/\_/\  ___ | |_    __ _  _ __    ___  | |_ | |__    ___  _ __   /\   /\ (_) _ __ ___   _ __   ___ '"\033[0m"
echo "\033[1;32m"'\_ _/ / _ \| __|  / _` || `_ \  / _ \ | __|| `_ \  / _ \| `__|  \ \ / / | || `_ ` _ \ | `__| / __|'"\033[0m"
echo "\033[1;32m"' / \ |  __/| |_  | (_| || | | || (_) || |_ | | | ||  __/| |      \ V /  | || | | | | || |   | (__ '"\033[0m"
echo "\033[1;32m"' \_/  \___| \__|  \__,_||_| |_| \___/  \__||_| |_| \___||_|       \_/   |_||_| |_| |_||_|    \___|'"\033[0m"
echo "\033[1;32m"''"\033[0m"
echo "\033[1;33m"'                                                                         this time by malev      '"\033[0m"
echo ""
echo "Remember to install ack-grep and exuberant-ctags for a nice experience"
echo ""
echo "\033[1;33m"' run vim and enjoy!                                                                              '"\033[0m"
echo ""
