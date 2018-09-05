export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kevinnguy"
COMPLETION_WAITING_DOTS="true"

plugins=(rails brew pod gem xcode heroku aws bundler git zsh-syntax-highlighting z)
source $ZSH/oh-my-zsh.sh

# configs
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH="$PATH:`yarn global bin`"

# use option-left and right to move word to word
bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word

# commands
echoco () { echo "$ $@"; }
away () {defaults -currentHost write com.apple.ScreenSaver.Basic MESSAGE $@; open -a ScreenSaverEngine}

### aliases
alias zshconfig="echoco 'atom ~/.zshrc'; atom ~/.zshrc"

# reload terminal
alias reload="echoco '. ~/.zshrc'; . ~/.zshrc"

# ls
alias ll="echoco 'ls -ahlo'; ls -ahlo"
alias lld="echoco 'ls -adhlo */'; ls -adhlo */"
alias llr="echoco 'ls -ahloR'; ls -ahloR"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

# git
alias gl="echoco 'tig --all'; tig --all"
alias gb="echoco 'git branch -a'; git branch -a"
alias gs="echoco 'git status'; git status"
alias gd="echoco 'git diff --abbrev-commit --oneline -U1 --color | diff-so-fancy'; git diff --abbrev-commit --oneline -U1 --color | diff-so-fancy | less --tabs=1,5 -R"
alias gds="echoco 'git diff --abbrev-commit --oneline -U1 --cached --color | diff-so-fancy'; git diff --abbrev-commit --oneline -U1 --cached --color | diff-so-fancy | less --tabs=1,5 -R"

# diff
alias diff="echoco 'icdiff'; icdiff"

# z plugin
alias cdd="z"
