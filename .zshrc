# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:$HOME/Apps:$HOME/go/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/sbrech/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sbrech"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(colored-man-pages git zsh-syntax-highlighting docker fzf-zsh)

source $ZSH/oh-my-zsh.sh

##
# User configuration
##

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='vim'

DEFAULT_USER=`whoami`
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

##
# History Configuration
##
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

## fzf
# öffnet für fzf ein eigenes tmux Fenster
export FZF_TMUX=1
#
export FZF_DEFAULT_OPTS='--no-reverse'

##
# Aliases
##

alias ansible_role_create="ansible-galaxy init"
alias tesa-sammelrepo="cd ~/Repos/1und1_Bitbucket/TESA/tesa-sammelrepo"
alias ccat="ccat --bg=dark"
alias python="/usr/local/bin/python2.7"
alias ls="exa"
alias contabo="ssh x353ZwZuUwcW@sbrech.de"

zstyle :prompt:shrink_path fish yes
