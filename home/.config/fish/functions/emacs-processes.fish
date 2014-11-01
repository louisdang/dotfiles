#!/usr/local/bin/fish
echo (ps aux | grep 'emacs --daemon' | grep -v 'grep' | awk '{print $2}')
