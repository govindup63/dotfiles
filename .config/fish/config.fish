if status is-interactive
    # Commands to run in interactive sessions can go here
end
export PATH="$HOME/.local/share/pnpm:$PATH"


# eza (ls alternative) aliases
alias ls "eza --icons"
alias l "eza --icons"
alias ll "eza -lg --icons"
alias la "eza -lag --icons"
alias lt "eza -lTg --icons"
alias lt1 "eza -lTg --level=1 --icons"
alias lt2 "eza -lTg --level=2 --icons"
alias lt3 "eza -lTg --level=3 --icons"
alias lta "eza -lTag --icons"
alias lta1 "eza -lTag --level=1 --icons"
alias lta2 "eza -lTag --level=2 --icons"
alias lta3 "eza -lTag --level=3 --icons"


alias python python3
alias :q exit
alias vi nvim
alias c clear
alias todo "node ~/Desktop/coding/cohort/3-week/cli-todo/index.js"
alias la "ls -a"
alias tree "tree -I '.git|node_modules' -a ."
alias nv "NVIM_APPNAME=nvimExample nvim"
alias tf tofu
alias k kubectl
alias utsc replace_tsconfig


# Function equivalent of mkcd (Fish doesn’t support alias with arguments)
function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end

if type -q zoxide
    zoxide init --cmd cd fish | source
end

# pnpm
set -gx PNPM_HOME /Users/govindpandey/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
