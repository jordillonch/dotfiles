# PATH
set PATH /usr/local/bin /usr/local/sbin ~/.composer/vendor/bin $PATH

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish

# Plugins
set fish_plugins percol sublime

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Percol
function fish_user_key_bindings
       bind \cr percol_select_history
end

# Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# Aliases
. $HOME/.dotfiles/utils/aliases.sh

# Exports
. $HOME/.dotfiles/utils/exports.sh

# AWS s
function s
    ec2s $argv | percol --prompt='CONNECT TO>' | read -l target
    set ip (echo $target | awk '{print $2}')
    ssh -l jordi.llonch $ip
end


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
