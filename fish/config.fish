status --is-interactive; and source (pyenv init -|psub)

set JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home

set -gx PATH /usr/local/Cellar/node/7.10.0/bin $PATH
set PATH $JAVA_HOME/bin $PATH
set PATH /Users/$USER/.cargo/bin $PATH
set PATH /Users/$USER/.nvim/bin $PATH
set PATH /Users/$USER/go/bin $PATH

# GOPATH
set GOPATH /Users/$USER/go

# For tmux vim cursor
set TMUX_TUI_ENABLE_SHELL_CURSOR 1

set XDG_CACHE_HOME /Users/$USER/.cache
set XDG_CONFIG_HOME /Users/$USER/.config


set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths

set TERM xterm-color

alias g='git'
alias vim='nvim'
alias v='nvim'
alias ls='exa'
alias tmux='tmux -2'

if status --is-login
  source $HOME/.config/fish/login.fish
  tmux new-session -A -s main; exec true
end

set fish_theme agnoster
