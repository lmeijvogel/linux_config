alias sdf='git add -p'
alias lkj='gs'

alias yum='sudo yum'

alias rtst='RAILS_ENV=test bundle exec rake test'
alias rdfl='bundle exec rake db:fixtures:load'
alias rdsl='bundle exec rake db:schema:load'
alias trdsl='RAILS_ENV=test bundle exec rake db:schema:load'
alias rdtp='bundle exec rake db:test:prepare'

alias orig='find . -regex "\\(.*\\.\\(BACKUP\\|BASE\\|LOCAL\\|REMOTE\\)\\..*\\)\\|.*\\.orig" -delete'

alias gti='git'

# Allow custom aliases per environment
[[ -x "$HOME/.aliases_private.sh" ]] && . "$HOME/.aliases_private.sh"