#!/usr/bin/env fish
function emacs-processes
	echo (ps aux | grep 'emacs --daemon' | grep -v 'grep' | awk '{print $2}')
end
