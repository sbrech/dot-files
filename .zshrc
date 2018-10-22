# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:$HOME/Apps:$HOME/go/bin:$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Path to your oh-my-zsh installation.
export ZSH=/Users/sbrech/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="sbrech"
ZSH_THEME="spaceship"
SPACESHIP_GIT_PREFIX="[git: "
SPACESHIP_GIT_SUFFIX="] "
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_KUBECONTEXT_PREFIX="[kube: "
SPACESHIP_KUBECONTEXT_SUFFIX="] "
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_BATTERY_SHOW=false

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(colored-man-pages git zsh-syntax-highlighting docker fzf-zsh brew kubectl)

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

## kube-ps1
#source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
#export PS1='$(kube_ps1)'$PS1
#export KUBE_PS1_SYMBOL_USE_IMG=true

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
alias ssh_ansible="ssh -i Repos/1und1_Bitbucket/TESA/tesa-sammelrepo/ansible/files/tool_ssh_keys/id_rsa_ansible -l jboss"
alias tesa-sammelrepo="cd ~/Repos/1und1_Bitbucket/TESA/tesa-sammelrepo"
alias ccat="ccat --bg=dark"
alias python="/usr/local/bin/python2.7"
alias contabo="ssh x353ZwZuUwcW@sbrech.de"
alias ls="ls -G"
alias l="ls -la"
alias kctl="kubectl"
alias kubeon="export SPACESHIP_KUBECONTEXT_SHOW=true"
alias kubeoff="export SPACESHIP_KUBECONTEXT_SHOW=false"

#zstyle :prompt:shrink_path fish yes