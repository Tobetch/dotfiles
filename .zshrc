#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Prerequisites(Do before next command)
# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Git
GIT_AUTHOR_NAME="Tobetch"
GIT_AUTHOR_EMAIL="takutobe@gmail.com"
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

# Homebrew
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Homebrew rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Homebrew node
export PATH="/usr/local/share/npm/bin:$PATH"

# Homebrew nodenv
eval "$(nodenv init -)"

# Homebrew nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# alias:Homebrew
alias brwlst='brew list'
alias brwsrvcs='brew services'
alias brwdctr='brew doctor'

# alias:npm
alias n="npm"
alias na="npm audit"
alias naf="npm audit fix"
alias naff="npm audit fix --force"
alias ncv="npm cache verify"
alias ni="npm install"
alias nig="npm install -g"
alias ns="npm run start"
alias ncu="npm-check-updates"

# Homebrew gradle
# export PATH="/opt/gradle/gradle-6.0.1/bin:$PATH"

# Homebrew openssl
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# alias:utility
alias al='alias'
alias gr='grep'
alias hg='history | grep'
alias sourcedot='source ~/.zshrc'

# alias
alias be='bundle exec'
alias ber='bundle exec rails'
alias bi='bundle install --path vendor/bundle --jobs=4'
alias ls='ls -G'
alias ll='ls -l'
alias la='ll -a'
alias rm='rm -i'
alias rs='be rails s -b 0.0.0.0'
alias tf='tail -f'
alias vi='vim'
alias :q='exit'

# alias:cd
alias cdd="cd $HOME/Desktop"

# alias:git
alias g="git"
alias l="git log"
alias lp="git log -p"
alias s="git status"
alias a="git add"
alias re="git reset"
alias res="git reset --soft HEAD~"
alias reh="git reset --hard HEAD~"
alias f="git fetch --prune"
alias rb="git rebase"
alias cm="git commit -m"
alias m="git merge"
alias md="git merge develop"
alias b="git branch"
alias bb="git branch -vv"
alias bd="git branch -d"
alias bD="git branch -D"
alias br="git branch -r"
alias bdall="git branch --merged | grep -v '*' | xargs -I % git branch -d %"
alias ch="git cherry-pick"
alias co="git checkout"
alias fco="git checkout --force"
alias cow="git checkout working"
alias cod="git checkout develop"
alias com="git checkout master"
alias gd="git diff"
alias gdd="git diff develop"
alias gddn="git diff develop --name-only"
alias ds="git diff --staged"
alias f="git fetch --prune"
alias push="git push -u origin HEAD"
alias fpush='git push -f origin HEAD'
alias p="git pull"
alias pd="git pull --rebase origin develop"
alias show="git show"
alias st="git stash"
alias stl="git stash list"
alias sts="git stash save"
alias stp="git stash pop"
alias std="git stash drop"
alias restore="git restore"
alias switch="git switch"

# alias:tig
alias t="tig"

# alias:docker
alias d="docker"
alias dils="docker image ls"
alias dila="docker image ls -a"
alias dcu="docker-compoose up -d"
alias dcd="docker-compoose down"
alias dcr='docker-compose restart'
alias dp='docker ps'
alias dx='docker exec -it'
# eval "$(pyenv init -)"

# Java(Mac用)
# export JAVA_HOME=`/usr/libexec/java_home -v 12` #java12が使いたいとき
export JAVA_HOME=$(/usr/libexec/java_home -v 11) #java11が使いたいとき
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8` #java8が使いたいとき

# Java(共通)
export PATH=$PATH:$JAVA_HOME/bin

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
