if status is-interactive
    # Commands to run in interactive sessions can go here
end

#  Set greeting
set fish_greeting "🚀 Welcome back, Classicus 🚀"

# >>> NVM Initialization >>>
# !! This loads nvm  config into fish
eval "$(/opt/homebrew/bin/brew shellenv)"

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
# >>> NVM Initialization >>>

starship init fish | source
