#!/usr/local/bin/fish
emacs-processes | xargs -I '{}' kill -9 '{}' > /dev/null
emacs --daemon