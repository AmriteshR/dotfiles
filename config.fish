if status is-interactive
    # Commands to run in interactive sessions can go here
end
#neofetch
alias dev_aws='sudo ssh -i ~/Mynd/Instance_54.198.152.236.pem ubuntu@35.172.92.13'
alias PAT='cat ~/Mynd/PAT'
# starship init fish | source

alias ll='exa -la'
alias gitlu='git log --graph --abbrev-commit --decorate'
alias tree='exa --tree --level=3'
alias update='sudo nala update && sudo nala upgrade'
alias lg="git log --all --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end



# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end
