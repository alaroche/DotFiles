# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#export ZSH_THEME="alaroche"
export ZSH_THEME="alanpeabody"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
 export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rvm rails)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export QUEUE='*' #csv_importer,pre_calculator,alarms,csv_importer_backlogged,pre_calculator_backlogged,alarm_backlogged,auto_mapper
# alias rs='rails server'
# alias rc='rails console'
alias thorshammer='bundle exec thor data:import -a -m && RAILS_ENV=cucumber bundle exec rake db:schema:load && rs'
alias thorfresh='bundle exec thor data:import -f -m && RAILS_ENV=cucumber bundle exec rake db:schema:load && rs'
alias cuke=cucumber
alias spec='bundle exec rake spec'
alias wip='bundle exec cucumber -p wip'
alias gwip='bundle exec guard -c -g cucumber'
alias gspec='bundle exec guard -c -g rspec'
alias giterdone='git add . && git commit -v'
alias push='git push -u origin $(current_branch)'
alias pull='git pull origin $(current_branch)'
alias gemreset='rvm gemset empty && gem install bundler && bundle'
alias trash='git stash && git stash drop'
alias resque='clear && rake resque:unlock_all && rake environment resque:work --trace'
alias sidekiq='clear && bundle exec sidekiq -C config/sidekiq.yml'
alias squash='git reset --soft origin/master && git commit'
alias pushsquash='git push origin $(current_branch) -f'
alias translate='bundle exec script/i18n_translator.rb'
alias extract='bundle exec script/i18n.rb'
alias cleanjs='rm public/javascripts/i18n/chef.js public/javascripts/i18n/en.js public/javascripts/i18n/ja.js'
alias cleanup='gco app/views/accounts && rm config/locales/chef/views/accounts.yml && config/locales/en/views/accounts.yml'
alias mergemaster='git merge --no-ff origin/master'
alias daq='cd ../DataAcquisition'
alias zshrc='vi ~/DotFiles/.zshrc'
alias vimrc='vi ~/DotFiles/.vimrc'

#Make git easy
alias g=git
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbdeps='ruby $HOME/code/git-dependancies.rb'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gg='git goggles'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gl='git pull'
alias glg='git log --stat --max-count=5'
alias glgg='git log --graph --max-count=5'
alias gm='git merge'
alias gp='git push'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gs='git status'
alias gsd='git svn dcommit'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'
alias gup='git fetch && git rebase'

export EDITOR=vim

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

# Macports
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

# Tmux
alias topen='tmuxinator open'
alias tstart='tmuxinator start'
alias ttest='tmux new-session -s tests -t'
alias tdm='tstart dm'
alias ttdm='tmux new-session -s DarkerMatterTests -t DarkerMatter'
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM 
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"  # This loads NVM 
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
cd ~/dev/Sentalis-4
