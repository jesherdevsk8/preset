## System
alias atualizar="sudo apt update && sudo apt upgrade -y && sudo apt clean && sudo apt autoremove -y"
alias xau="shutdown -h now"
alias renascer="shutdown -r now"
alias ports='sudo lsof -i -P -n | grep LISTEN'
alias aliases='vim ~/.bash_aliases'
alias rubolint='git diff --cached --name-only | xargs bundle exec rubocop'

## RUBY
alias rc="bin/rails console"
alias rs="bin/rails server"

## GIT
alias gts="git status"
alias gck="git checkout"
alias gto="git pull origin master"
alias branch="git branch"

