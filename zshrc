# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/kailoon/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Prompt
ZSH_THEME="refined"
# ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

MBOL_CHARGING='\uf588'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(wp-cli git extract zsh-autosuggestions)

# User configuration
ZSH_AUTOSUGGEST_COMPLETION_IGNOR="vp *"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Needed for rbenv
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

# valerpress config
if [ -f ~/.valetpress/valetpress ]; then
    source ~/.valetpress/valetpress
else
    print "404: ~/.valetpress/valetpress not found."
  fi
export PATH="/usr/local/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias pf="fzf --preview='less {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"
#determines search program for fzf
if type ag &> /dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
#refer rg over ag
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

# TMUX
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"

# Show Path
alias path='echo -e ${PATH//:/\\n}'

# Show available commands
alias la="cat ~/.zshrc | grep alias | cut -c 7-"
alias lf="cat ~/.zshrc | grep function | cut -c 7-"
function plugins() {
  echo howdoi \n task \n lolcat \n ag \n googler \n jrnl \n jira
}

# Configuration
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias chrome="open -a \"Google Chrome\""
alias gitconfig="code ~/.gitconfig"
alias zshsrc="source ~/.zshrc"
# Navigation
## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# FileSearch
# function f() { find . -iname "*$1*" ${@:2} }
# function r() { grep "$1" ${@:2} -R . }

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/Users/kailoon/.local/bin/:$PATH"

alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
