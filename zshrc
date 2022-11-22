# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
#
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git jsontools)

source $ZSH/oh-my-zsh.sh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="honukai/honukai"

# Aliases
alias mysql='/usr/local/mysql/bin/mysql'
alias psql="/usr/local/Cellar/postgresql/14.1_1/bin/psql"
alias pg_dump="/usr/local/Cellar/postgresql/14.1_1/bin/pg_dump"
alias pg_restore="/usr/local/Cellar/postgresql/14.1_1/bin/pg_restore"
alias python=python3

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"


# Customize to your needs...
[[ -z "$terminfo[khome]" ]] || bindkey -M emacs "$terminfo[khome]" beginning-of-line
[[ -z "$terminfo[kend]" ]] || bindkey -M emacs "$terminfo[kend]" end-of-line
[[ -z "$terminfo[kpp]" ]] || bindkey -M emacs "$terminfo[kpp]" history-beginning-search-backward
[[ -z "$terminfo[knp]" ]] || bindkey -M emacs "$terminfo[knp]" history-beginning-search-forward


# Customize to your needs...
export PATH=/usr/local/include:/usr/local/texlive/2012/bin/x86_64-darwin:/Applications/Xcode.app/Contents/Developer/usr/bin:/opt/local/bin:/user/local/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/gocode"
export PATH="$PATH:$GOPATH/bin"
# Set CLICOLOR if you want Ansi Colors in iTerm2 
#export CLICOLOR=1
export TERM="xterm-256color"
export EDITOR="vim"
export MAGICK_HOME=/opt/local
bindkey -v
setopt AUTO_CD

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=${PATH}:/usr/local/Cellar/postgresql/13.1/bin
export PATH=$PATH:/Library/TeX/texbin:/usr/texbin:/usr/local/bin:/opt/local/bin
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

