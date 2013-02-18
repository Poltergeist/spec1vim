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
export PATH=/Users/philipphinrichsen/.rvm/gems/ruby-1.9.2-p136/bin:/Users/philipphinrichsen/.rvm/gems/ruby-1.9.2-p136/bin:/Users/philipphinrichsen/.rvm/gems/ruby-1.9.2-p136@global/bin:/Users/philipphinrichsen/.rvm/rubies/ruby-1.9.2-p136/bin:/Users/philipphinrichsen/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/usr/texbin:/usr/X11/bin:/usr/local/sbin


#Aliasses
alias snipdocsapi=cd Sites/snipdocs && source bin/activate && cd snipdocs && python manage.py runserver

alias snipdocsapp=cd Dropbox/snipdocs && hem server
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias macvim="open /Applications/Macvim.app"
alias aenv="source bin/activate && cd snipdocs"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
