#!/usr/local/bin/fish
function reset-emacs
	emacs-processes | xargs -I '{}' kill -9 '{}' > /dev/null
	emacs --daemon
end