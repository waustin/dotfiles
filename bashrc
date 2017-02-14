export CLICOLOR=1
export LSCOLORS=CxFxCxDxBxegedabagacad
#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin
export PATH=/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/usr/sbin:$PATH

export PATH=/usr/local/bin:$PATH

# GIT STUFF
export PATH=/usr/local/git/bin:$PATH

# NODE / NPM
export PATH=$PATH:$HOME/npm/bin
export NODE_PATH=$NODE_PATH:$HOME/npm/lib/node_modules


# SBIN DIR
export PATH=/usr/sbin:$PATH

# HOME BIN
export PATH=$HOME/bin:$PATH

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

alias rm='rm -i'
alias ls='ls -l'
export DJ_APP_TEMPLATE=/Users/wadeaustin/Development/personal/repos/django-starter-templates/django-app-template/
export DJ_PRJ_TEMPLATE=https://github.com/waustin/django-project-template/archive/master.zip


# HOMEBREW GIT
export HOMEBREW_GITHUB_API_TOKEN=e76d36bb085f967088c9b955f5a3c43594b28bfa

# Fix sublime window bug
alias edit='subl && sleep 0.1 && subl'

# RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


