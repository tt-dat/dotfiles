#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# using vi instead of emacs
set -o vi


# default coloring
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# dafault coloring and case-insensitive for rg
alias rg='rg --color=auto --ignore-case'


PS1='[\u \W]\$ '

# using z and zi as alias for zoxide query (interactive)
eval "$(zoxide init bash)"

### GITHUB_CLI
# use 4-bit color palette
gh config set accessible_colors enabled

# display issue and pull request with RGB colors
gh config set color_labes enabled
