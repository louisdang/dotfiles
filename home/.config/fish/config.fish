#!/usr/bin/env fish
set -xg PATH $PATH ~/bin 
set -xg PATH $PATH ~/bin/local > /dev/null
set -xg TERM xterm-256color
set -xg EDITORS subl emclient vim vi nano
set -xg HOME_GIT_REPO "~/dotfiles/home"
set -xg SYMLINK_SYNC_COMMAND "symlink-sync"
set -xg SCRIPT_LOCATION "~/.config/fish/config.fish"

# synchronize home with git
alias sync-home "$SYMLINK_SYNC_COMMAND $HOME_GIT_REPO ~/"


sync-home > /dev/null


set -xg EDITOR (which vim)
# e is a script that uses the editors in $EDITORS in priority order
if which -s e 
	set -xg EDITOR (which e)
end

# use emacsclient wrapper for emacs if available
if which emclient > /dev/null
	alias emacs "emclient; or command emacs"
end


# reload this script
alias reload (echo source $SCRIPT_LOCATION)
