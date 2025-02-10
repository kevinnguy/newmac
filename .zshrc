zstyle ':omz:*' aliases no
zstyle ':omz:update' mode auto
zstyle ':omz:update' verbose minimal # only few lines

export REACT_EDITOR=code

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kevinnguy"
COMPLETION_WAITING_DOTS="true"

plugins=(brew z zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# configs
export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$PATH:`yarn global bin`"

# use option-left and right to move word to word
bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word

# commands
echoco () { echo "$ $@"; }
away () {defaults -currentHost write com.apple.ScreenSaver.Basic MESSAGE $@; open -a ScreenSaverEngine}

### aliases
alias zshconfig="echoco 'open ~/.zshrc'; open ~/.zshrc"

# reload terminal
alias reload="echoco '. ~/.zshrc'; . ~/.zshrc"

# ls
alias ll="echoco 'ls -ahlo --color=auto'; ls -ahlo --color=auto"
alias lld="echoco 'ls -adhlo  */'; ls -adhlo */"
alias llr="echoco 'ls -ahloR'; ls -ahloR"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

# git
# gl () { tig $@ }
alias gl="echoco 'tig --all'; tig --all"
alias gb="echoco 'git branch -a'; git branch -a"
alias gs="echoco 'git status'; git status"
alias gd="echoco 'git diff --abbrev-commit --oneline -U1 --color --stat'; git diff --abbrev-commit --oneline -U1 --color --stat"
alias gds="echoco 'git diff --abbrev-commit --oneline -U1 --cached --color --stat'; git diff --abbrev-commit --oneline -U1 --cached --color --stat"

# diff
alias diff="echoco 'icdiff'; icdiff"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/kevinnguy/.lmstudio/bin"

