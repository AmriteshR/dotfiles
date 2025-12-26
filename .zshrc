. "$HOME/.local/bin/env"

# -------------------------
# Basics
# -------------------------
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# History
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

# Better globbing
setopt extendedglob
setopt globdots

# -------------------------
# Zoxide
# -------------------------
eval "$(zoxide init zsh)"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
### End of Zinit's installer chunk


### -------- PLUGINS --------

# autosuggestions (fish-like)
zinit light zsh-users/zsh-autosuggestions

# syntax highlighting (must be last)
zinit light zsh-users/zsh-syntax-highlighting

# fast completions
zinit light zsh-users/zsh-completions

# Enable transient prompt behavior
setopt PROMPT_SP

# ---- PYENV SETUP ----
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# ----- STARTSHIP ------
eval "$(starship init zsh)"
