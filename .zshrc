# Homebrew
export PATH=/usr/local/bin:$PATH

# Homebrew rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Homebrew node
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH

# alias
alias be='bundle exec'
alias bi='bundle install --path vendor/bundle --jobs=4'
alias ls='ls -G'
alias ll='ls -l'
alias la='ll -a'
alias rm='rm -i'
alias rs='be rails s -b 0.0.0.0'
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
alias cm="git commit"
alias m="git merge"
alias b="git branch"
alias bb="git branch -vv"
alias br="git branch -r"
alias bdall="git branch --merged | grep -v '*' | xargs -I % git branch -d %"
alias ch="git cherry-pick"
alias co="git checkout"
alias cow="git checkout working"
alias cod="git checkout develop"
alias com="git checkout master"
alias d="git diff"
alias dd="git diff develop"
alias ddn="git diff develop --name-only"
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

# alias:tig
alias t="tig"

# eval "$(pyenv init -)"

# alias:npm
alias n="npm"
alias ns="npm run start"

# nodebrew
export PATH=$PATH:/Users/[ユーザー名]/.nodebrew/current/bin
export PATH=$PATH:`npm bin -g`

# java
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home
