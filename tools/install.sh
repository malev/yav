if [ -f ~/.yav ]
then
  echo "\033[0;33mYou already have Yav installed.\033[0m You'll need to remove ~/.yav if you want to install"
  exit 1
fi

if which vim > /dev/null; then
else
  echo "\033[0;33mYou don't have Vim installed. \033[0m"
fi

echo "\033[0;34mCloning Yav\033[0m"
hash git >/dev/null && /usr/bin/env git clone git://github.com/malev/yav.git ~/.yav || {
  echo "git not installed"
  exit
}

for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do
if [[ ( -e $i ) || ( -h $i ) ]]; then
echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || echo "Could not move ${i} to ${i}.old"; exit 1
  fi
done

echo "\033[1;32m"'            _                          _    _                            _                        '"\033[0m"
echo "\033[1;32m"'/\_/\  ___ | |_    __ _  _ __    ___  | |_ | |__    ___  _ __   /\   /\ (_) _ __ ___   _ __   ___ '"\033[0m"
echo "\033[1;32m"'\_ _/ / _ \| __|  / _` || `_ \  / _ \ | __|| `_ \  / _ \| `__|  \ \ / / | || `_ ` _ \ | `__| / __|'"\033[0m"
echo "\033[1;32m"' / \ |  __/| |_  | (_| || | | || (_) || |_ | | | ||  __/| |      \ V /  | || | | | | || |   | (__ '"\033[0m"
echo "\033[1;32m"' \_/  \___| \__|  \__,_||_| |_| \___/  \__||_| |_| \___||_|       \_/   |_||_| |_| |_||_|    \___|'"\033[0m"
echo "\033[1;32m"''"\033[0m"
echo "\033[1;33m"'                                                                         this time by malev      '"\033[0m"
