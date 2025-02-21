if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias ls colorls
alias python python3
alias :q exit
alias vi nvim
alias c clear
alias todo "node ~/Desktop/coding/cohort/3-week/cli-todo/index.js"
alias la "ls -a"
alias tree "tree -I '.git|node_modules' -a ."
alias nv "NVIM_APPNAME=nvimExample nvim"
alias k kubectl
alias utsc replace_tsconfig

# Function equivalent of mkcd (Fish doesn’t support alias with arguments)
function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end

if type -q zoxide
    zoxide init --cmd cd fish | source
end
