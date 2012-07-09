# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="alaroche"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rvm rails3 command-not-found)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export QUEUE='*' #csv_importer,pre_calculator,alarms,csv_importer_backlogged,pre_calculator_backlogged,alarm_backlogged,auto_mapper
alias ack=ack-grep
# alias rs='rails server'
# alias rc='rails console'
alias thorshammer='thor data:import -a -m --trace && RAILS_ENV=cucumber rake db:schema:load'
alias thorsham='thor data:import -a -m --trace'
alias cuke=cucumber
alias spec='rake spec'
alias wip='cucumber -p wip'
alias gwip='guard -c -g cucumber'
alias gspec='guard -c -g rspec'
alias giterdone='git add . && git commit'
alias push='git push -u origin $(current_branch)'
alias pull='git pull origin $(current_branch)'
alias gemreset='rvm gemset empty && gem install bundler && bundle'
alias trash='git stash && git stash drop'
alias resque='rake resque:work'

export EDITOR=vim
=======

# Add ~/bin to path
export PATH=$HOME/bin:$PATH

# Make ZSH vi mode behave more like vim mode
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M viins '^?' backward-delete-char

# Control r for search
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# modify up down behavior to search based on current command
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

export EDITOR=vim

# System shortcuts
alias git='nocorrect git'
alias ll='ls -lth'
alias lla='ls -ltha'

# Vim Clojure
export VIMCLOJURE_SERVER_JAR="$HOME/.vim/vim-clojure/server-2.3.1.jar"

# Cassandra
export CASSANDRA_HOME="$HOME/cassandra"
export PATH=$PATH:$CASSANDRA_HOME/bin

# On OSX...
if [ $(uname) = "Darwin" ] ; then
  # Use mvim in terminal mode with better clipboard support
  alias vim='mvim -v'

  # Use tmux OSX config
  alias tmux="TERM=xterm-256color tmux -2 -f $HOME/.tmux.osx.conf"

  # Add sbin to path (for homebrew/rabbitmq)
  export PATH=$PATH:/usr/local/sbin
fi

# On Linux
if [ $(uname) != "Darwin" ] ; then

  # Use tmux linux config
  alias tmux="TERM=xterm-256color tmux -2 -f $HOME/.tmux.linux.conf"
fi

# On Ubuntu...
if [ $(uname -a | grep Ubuntu | wc -l) = 1 ] ; then
  alias ack='ack-grep'
fi

# Tmux
alias topen='tmuxinator open'
alias tstart='tmuxinator start'
alias ttest='tmux new-session -s tests -t'
alias tdm='tstart dm'
alias ttdm='tmux new-session -s DarkerMatterTests -t DarkerMatter'
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
cd ~/dev/Sentalis-4
