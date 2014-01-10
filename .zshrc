# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby brew npm node)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/usr/texbin:/usr/X11/bin:/usr/local/sbin:/usr/local/share/npm/bin


#Aliasses
alias snipdocsapi=cd Sites/snipdocs && source bin/activate && cd snipdocs && python manage.py runserver

alias snipdocsapp=cd Dropbox/snipdocs && hem server
alias vim="$HOME/Applications/MacVim.app/Contents/MacOS/Vim"
alias macvim="open $HOME/Applications/Macvim.app"
alias fish="/usr/local/bin/fish"

hash -d pr=~/projects/

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

__git_files () {
    _wanted files expl 'local files' _files
  }
