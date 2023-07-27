# make command available after install immediately
zstyle ":completion:*:commands" rehash 1

# PROMPT NAME(default: %n@%m %1~ %#)
PROMPT="%n %1~ %#"

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

# Homebrew npm
export PATH="/usr/local/share/npm/bin:$PATH"

# Homebrew nodenv
eval "$(nodenv init -)"

# For zsh-completions, zsh-autosuggestions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit && compinit
fi

# alias:Homebrew
alias brl='brew list'
alias brs='brew services'
alias brd='brew doctor'
alias bru='brew update'
alias brug='brew upgrade'

# alias:npm
alias n="npm"
alias na="npm audit"
alias naf="npm audit fix"
alias naff="npm audit fix --force"
alias ncv="npm cache verify"
alias ni="npm install"
alias nig="npm install -g"
alias nr="npm run"
alias ns="npm run start"
alias ncu="npm-check-updates"

# alias:yarn
alias y="yarn"
alias yi="yarn install"
alias yr="yarn run"
alias ys="yarn run start"

# Homebrew gradle
# export PATH="/opt/gradle/gradle-6.0.1/bin:$PATH"

# Homebrew openssl
export PATH=$(brew --prefix openssl)/bin:$PATH
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
# export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# alias

## alias:utility
alias al='alias'
alias cl='clear'
alias gr='grep'
alias hg='history | grep'
alias sourcedot='source ~/.zshrc'

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

## alias:cd
alias cdd="cd $HOME/Downloads"

## alias:git
alias g="git"
alias l="git log"
alias lp="git log -p"
alias lo="git log --oneline"
alias s="git status"
alias a="git add"
alias re="git reset"
alias res="git reset --soft HEAD~"
alias reh="git reset --hard HEAD~"
alias rb="git rebase"
alias rbd="git rebase develop"
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

## alias:tig
alias t="tig"

## alias:docker
alias d="docker"
alias dils="docker image ls"
alias dila="docker image ls -a"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcr='docker-compose restart'
alias dp='docker ps'
alias dx='docker exec -it'
# eval "$(pyenv init -)"

# Java for Mac
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) #java8が使いたいとき
# export JAVA_HOME=$(/usr/libexec/java_home -v 11) #java11が使いたいとき
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Java(共通)
export PATH=$PATH:$JAVA_HOME/bin

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Scala
export PATH=$PATH:$HOME/Library/Application\ Support/Coursier/bin

# Tomcat
export CATALINA_HOME=/usr/local/Cellar/tomcat@9/9.0.53

# firebase
alias fb='firebase'
alias fbl='firebase login'
alias fbi='firebase init'
alias fbd='firebase deploy'

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
alias gr="go run"
alias gg="go get"
alias gm="go mod"
alias gmi="go mod init"

# Android Studio
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# flutter
export PATH="$PATH:${HOME}/development/flutter/bin"
alias fl="flutter"
alias fld="flutter devices"
alias flr="flutter run"
alias flra="flutter run -d RFCN20NQEYW"
alias flrae="flutter run -d emulator-5554"
alias flrc="flutter run -d chrome"
alias flrm="flutter run -d macos"
alias fli="flutter install"
alias flt="flutter test"
alias fls="flutter screenshot"

# Android Studio
export PATH="$PATH":"$HOME/Library/Android/sdk"
export PATH="$PATH":"$HOME/Library/Android/sdk/emulator"
# emulator -avd Pixel_4_API_30 -netdelay none -netspeed full

# Dart
# activate flutter_gen
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Python
alias pi="pip install"

# Python Build
# env \
#   PATH="$(brew --prefix tcl-tk)/bin:$PATH" \
#   LDFLAGS="-L$(brew --prefix tcl-tk)/lib" \
#   CPPFLAGS="-I$(brew --prefix tcl-tk)/include" \
#   PKG_CONFIG_PATH="$(brew --prefix tcl-tk)/lib/pkgconfig" \
#   CFLAGS="-I$(brew --prefix tcl-tk)/include" \
#   PYTHON_CONFIGURE_OPTS="--with-tcltk-includes='-I$(brew --prefix tcl-tk)/include' --with-tcltk-libs='-L$(brew --prefix tcl-tk)/lib -ltcl8.6 -ltk8.6'" \
#   pyenv install 3.10.11

## Python Tesseract
export LD_LIBRARY_PATH=$(brew --prefix)/lib
export PYTHONPATH=$LD_LIBRARY_PATH/python3.10/site-packages
export TESSDATA_PREFIX=$(brew --prefix)/share/tessdata

# MySQL
export MYSQL_USER=tobetch
# export MYSQL_PASSWORD=

