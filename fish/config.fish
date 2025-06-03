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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/mambaforge/base/bin/conda
    eval /opt/homebrew/Caskroom/mambaforge/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/mambaforge/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/mambaforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/mambaforge/base/bin" $PATH
    end
end

if test -f "/opt/homebrew/Caskroom/mambaforge/base/etc/fish/conf.d/mamba.fish"
    source "/opt/homebrew/Caskroom/mambaforge/base/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<
