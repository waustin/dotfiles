export CLICOLOR=1
export LSCOLORS=CxFxCxDxBxegedabagacad
#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin
export PATH=/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/usr/sbin:$PATH

export PATH=/usr/local/bin:$PATH

# GIT STUFF
export PATH=/usr/local/git/bin:$PATH


# SBIN DIR
export PATH=/usr/sbin/:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

# open a new tab on Terminal with the current working dir
function newtab {
	osascript -e "
		tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down
		tell application \"Terminal\" to do script \"cd $PWD \" in selected tab of the front window
	" > /dev/null 2>&1
}
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export PATH=/Library/Frameworks/SQLite3.framework/Programs:$PATH

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
