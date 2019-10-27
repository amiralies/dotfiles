#INIT_TIME_SIEVER=$(($(date +%s%N)/1000000))
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Default theme
#ZSH_THEME="robbyrussell"

# Fix colors
export TERM=st-256color
# Powerlevel9k
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Time Zone
export TZ='Asia/Tehran'

# Home bin
export PATH=$PATH:$HOME/bin

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
alias emu=~/Android/Sdk/emulator/emulator

# aliases
alias azizam=sudo
alias v=vim
alias nv=nvim
alias open=xdg-open
alias cpwd="pwd | xclip -selection clipboard" 
alias cpcb="xclip -selection clipboard" 
alias js=node
alias csv-show="column -s , -t"
alias u="sudo pacman -Syu"
alias e=exit
alias c=clear
alias dic=sdcv
alias turnoff="systemctl poweroff"

# Vi mode
set -o vi
bindkey -M viins jj vi-cmd-mode

# Powerline
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='grey100'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='grey100'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='070'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='036'
POWERLEVEL9K_DIR_HOME_FOREGROUND='grey100'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='grey100'
POWERLEVEL9K_DIR_ETC_FOREGROUND='grey100'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='grey100'
POWERLEVEL9K_DIR_HOME_BACKGROUND='grey35'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='grey35'
POWERLEVEL9K_DIR_ETC_BACKGROUND='grey35'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='grey35'

# Golang stuff
export GOPATH=$HOME/go
export PATH="$PATH:$HOME/go/bin"

# Npm local usage
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Completions
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
compdef sdc=docker-compose

# Remove duplicates from history
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS

# Gem
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export GEM_PATH=$HOME/gems:/usr/local/lib/ruby/gems/1.6/
export GEM_HOME=$HOME/.gem
export RB_USER_INSTALL='true'

# ipinfo
alias ipinfo="curl ipinfo.io"

# General vars
export EDITOR=vim
export STARDICT_DATA_DIR=~/.stardict

# FZF
source /usr/share/fzf/key-bindings.zsh

# SSH agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

#FINAL_TIME_SIEVER=$(($(date +%s%N)/1000000))
#echo $(($FINAL_TIME_SIEVER - $INIT_TIME_SIEVER))

# opam configuration
test -r ~/.opam/opam-init/init.zsh && . ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
