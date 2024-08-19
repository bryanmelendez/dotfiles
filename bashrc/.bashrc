#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliased scripts
alias create-project='/home/bryan/bin/create-project/create-project.sh'
alias note='/home/bryan/bin/note.sh'
alias log='/home/bryan/bin/log.sh'
alias ?='/home/bryan/bin/duck.sh'
alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias idf_new_project='. ~/bin/idf_new_project.sh'
alias pomo='go/bin/pomo'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# env vars
export sync='/home/bryan/Documents/sync'
export notes='/home/bryan/Documents/notes'
export PICO_SDK_PATH=/home/bryan/pico/pico-sdk
