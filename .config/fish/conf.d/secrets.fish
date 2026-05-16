set -l fish_secrets_file ~/.config/fish/secrets.fish
if test -f $fish_secrets_file
    source $fish_secrets_file
end
