if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias dev_aws='sudo ssh -i ~/Work/Instance_54.198.152.236.pem ubuntu@35.172.92.13'
alias secur_prod='ssh -i ~/Work/Secur_Instance.pem ubuntu@54.85.243.167'
alias PAT='cat ~/Work/PAT | xclip -selection clipboard'
# starship init fish | source
alias ll='exa -la --icons'
alias gitlu='git log --graph --abbrev-commit --decorate'
alias tree='exa --tree --level=3'
alias lg="git log --all --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"

# pyenv init
pyenv init - | source

starship init fish | source
