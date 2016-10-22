export PATH='/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin'

PS1='$ '
alias lsa='ls -lah'
alias virtualenv='virtualenv-2.7'
alias vi='mvim -v'
alias findn='find . -iname'
alias gs='git status -s'
alias ga='git add --all'
alias gc='git commit -m'
alias gca='git commit --amend -C'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue) <%an>%Creset" --abbrev-commit'
alias gb='git branch'
alias gch='git checkout'
alias gst='git stash'
alias gstp='git stash pop'
alias gf='git fetch'
alias gr='git reset'
alias gm='git merge'
alias j='cd ~/Documents/janther/engineering/janther; workon janther'
alias pj='cd ~/Documents/janther/engineering/pre-launch; workon janther-pre'
alias r='cd ~/Documents/Rallytap/Product/rallytap-django; workon rallytap'
alias ri='cd ~/Documents/Rallytap/Product/rallytap-ionic; pwd'
alias rc='cd ~/Documents/Rallytap/Product/rallytap-django/rallytap/client; workon rallytap'
alias dm='cd ~/Documents/Rallytap/Product/rallytap-meteor; pwd'
alias pab='rm -rf ~/library/Developer/Xcode/DerivedData/*'
alias gunit='gulp unit'
alias me='cd ~/Documents/Personal\ Website/repo; workon me'
alias f='cd ~/Documents/favocracy/favocracy; workon favocracy'
alias fc='cd ~/Documents/favocracy/favocracy/favocracy/client; pwd'
alias pyserve='python -m SimpleHTTPServer'
alias hs='honcho start -f Procfile.dev'

# Create a directory and cd into in one command.
function md
{
  command mkdir $1 && cd $1
}

# Create the files necessary for a new angular view.
createAngularView() {
    mkdir $1
    touch $1/$1{-controller.spec.coffee,-controller.coffee,.html,.scss,-module.coffee}
}
alias ngview=createAngularView

### Added by the Heroku Toolbelt
export PATH="$PATH:/usr/local/heroku/bin"

# Use local version of Node.js modules
export PATH="$PATH:./node_modules/.bin"

# needed for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# virtualenvwrapper shortcuts
alias mkenv='mkvirtualenv'
alias rmenv='rmvirtualenv'

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Docker IP address.
#export DOCKER_HOST="tcp://$(boot2docker ip 2>/dev/null):2375"

# rbenv

### Add Postgres to the path
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH

# Install Z
source ~/Documents/projects/z/z.sh

# Android SDK
export PATH="$PATH:/Users/michaelkolodny/Library/Android/sdk/platform-tools"
export PATH="$PATH:/Users/michaelkolodny/Library/Android/sdk/tools"

# Go
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# http://www.macworld.com/article/1146015/os-x/termhistory.html
# http://hints.macworld.com/article.php?story=20031026174236860
set show-all-if-ambiguous on
set completion-ignore-case on 
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
