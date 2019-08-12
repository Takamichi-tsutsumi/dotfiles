set TERM xterm-256color
# cargo
source $HOME/.cargo/env

alias g='git'
alias ls='exa'
alias clr='clear'
alias ghq-root='cd (ghq root)'
alias ghq-dev='cd (ghq root)/github.com/tkmct'
alias cat='bat'

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

alias tmux="tmux -2"

# Fish color
set nord0 2e3440
set nord1 3b4252
set nord2 434c5e
set nord3 4c566a
set nord4 d8dee9
set nord5 e5e9f0
set nord6 eceff4
set nord7 8fbcbb
set nord8 88c0d0
set nord9 81a1c1
set nord10 5e81ac
set nord11 bf616a
set nord12 d08770
set nord13 ebcb8b
set nord14 a3be8c
set nord15 b48ead

set fish_color_normal $nord4
set fish_color_command $nord9
set fish_color_quote $nord14
set fish_color_redirection $nord9
set fish_color_end $nord6
set fish_color_error $nord11
set fish_color_param $nord4
set fish_color_comment $nord3
set fish_color_match $nord8
set fish_color_search_match $nord8
set fish_color_operator $nord9
set fish_color_escape $nord13
set fish_color_cwd $nord8
set fish_color_autosuggestion $nord6
set fish_color_user $nord4
set fish_color_host $nord9
set fish_color_cancel $nord15
set fish_pager_color_prefix $nord13
set fish_pager_color_completion $nord6
set fish_pager_color_description $nord10
set fish_pager_color_progress $nord12
set fish_pager_color_secondary $nord1

# greetings
set fish_greeting ""
