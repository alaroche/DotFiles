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
# export DISABLE_AUTO_TITLE="true"

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

#export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export EDITOR=vim
#export PATH=/home/alaroche/.rvm/gems/ruby-1.8.7-p334@sentalis4rails3/bin:/home/alaroche/.rvm/gems/ruby-1.8.7-p334@global/bin:/home/alaroche/.rvm/rubies/ruby-1.8.7-p334/bin:/home/alaroche/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
cd ~/Workingcopies/Sentalis-4
