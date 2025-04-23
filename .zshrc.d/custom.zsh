# share history across multiple zsh sessions
setopt share_history
# append to history
setopt append_history
# expire duplicates first
setopt hist_expire_dups_first
# do not store duplications
setopt hist_ignore_dups
# ignore duplicates when searching
setopt hist_find_no_dups
# removes blank lines from history
setopt hist_reduce_blanks

setopt hist_verify

setopt correct
setopt correct_all

setopt extendedglob
setopt noclobber

# To solve a bug with p10k
unset ZSH_AUTOSUGGEST_USE_ASYNC

# Use emacs keybindings.
bindkey -e

# Path
PATH="/Users/florent/.local/bin:$PATH"
PATH="/opt/homebrew/opt/bison/bin:$PATH"
PATH="/opt/homebrew/opt/flex/bin:$PATH"
PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export PATH

# Conda & Mamba
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/mamba.sh" ]; then
    . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# opam configuration
[[ ! -r /Users/florent/.opam/opam-init/init.zsh ]] || source /Users/florent/.opam/opam-init/init.zsh >/dev/null 2>/dev/null

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# TheFuck
eval $(thefuck --alias)
