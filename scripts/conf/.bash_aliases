alias fn="~/fn.sh"
alias trouve="~/trouve.sh"
alias scans="cd ~/Documents/Scans"
alias ll="ls -lisa"
alias grepi="grep -i"
alias grev="grep -v"
alias grevi="grep -i -v"
alias c="wc -l"
alias dush="du -sh"
alias dfh="df -h"
alias k="kill -9"
alias so="echo Last command return code was \$?"
alias zou=". ~/zou.sh"
alias zoum=". ~/zoum.sh"
alias zoua=". ~/zoua.sh"
alias 14="cd ~/Documents/2014"
alias 15="cd ~/Documents/2015"
alias 16="cd ~/Documents/2016"
alias 17="cd ~/Documents/2017"
alias 18="cd ~/Documents/2018"
alias 19="cd ~/Documents/2019"
alias 20="cd ~/Documents/2020"
alias h="history"
alias c="wc -l"
alias add="awk '{s+=\$1} END {print s}'"
alias m5="md5sum"
alias chr=chromium-browser

alias pshs="python -m SimpleHTTPServer"

alias ws="cd ~/workspace"
alias dev="cd ~/Dev"

alias aliases="mousepad ~/.bash_aliases && . ~/.bash_aliases"
alias prof="mousepad ~/.profile && . ~/.profile"
alias bashrc="mousepad ~/.bashrc && . ~/.bashrc"

alias freemem='sudo sync; sudo echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias t="ps aux | grep tomcat"
alias kt="kill -9 `ps ax | grep tomcat | grep -v grep | awk '{print $1}'`"
alias rmold="find . -mtime +5 -exec rm {} \;"
alias sagu="sudo apt-get update"
alias sagi="sudo apt-get install -y"
#alias sagil="sudo apt-get install !:0"
#alias sagil="sudo apt-get install -y \$_"

alias wo='wget -O- '

function mkcd(){
  mkdir -p $1;
  cd $1;
}

alias gst="git status"
alias gd="git diff"
alias gdi="git diff --ignore-space-change"
alias gau="git add -u"
alias gcm="git commit -m"
alias gpull="git pull"
alias gpullo="git pull origin"
alias gpullom="git pull origin master"
alias gpush="git push"
alias gpusho="git push origin"
alias gpoh="git push origin HEAD"
alias gl="git log"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gchm="git checkout master"
alias gdhh="git diff HEAD^..HEAD"

alias gos="goapp serve"
alias god="goapp deploy"

alias d="docker"
alias dock="docker"

alias token="~/token.sh"
alias projects="~/projects.sh"
alias published="~/published.sh"

alias chrono="/usr/bin/time -f\"%E\""

alias gscat="gsutil cat"
alias gsls="gsutil ls"
alias gsll="gsutil ls -l"
alias gscp="gsutil cp"
alias gsmcp="gsutil -m cp"
alias gcu="gcloud components update"

