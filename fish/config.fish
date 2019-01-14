set TERM xterm-color

alias g='git'
alias ls='exa'
alias clr='clear'
alias vi='vim'
alias v='vim'
alias ghq-root='cd (ghq root)'
alias ghq-dev='cd (ghq root)/github.com/tkmct'
alias cat='bat'

set fish_theme agnoster

function fish_user_key_bindings
  bind \cr peco_select_history
  bind \cg 'cd (ghq root)/(ghq list | peco --layout=bottom-up)'
end

function __nodebrew_use_on_cd --on-variable PWD --description 'Use Node.js version specified by project'
    if test -e .node-version
       nodebrew use (cat .node-version)
       return
    end
end
