#!/usr/bin/env fish

function setup-mac
	set curr_dir (pwd)
	cd /tmp
	wget http://www.marksimonson.com/assets/content/fonts/AnonymousPro-1.002.zip
	unzip AnonymousPro-1.002.zip
	open AnonymousPro-1.002.001/*.ttf
	cd $curr_dir
end
