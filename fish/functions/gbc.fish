function gbc --wraps='git branch -D $(git branch | egrep -v "master")' --wraps='git branch | grep -v master | xargs git branch -D' --description 'alias gbc=git branch | grep -v master | xargs git branch -D'
  git branch | grep -v master | xargs git branch -D $argv
        
end
