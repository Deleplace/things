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
alias 21="cd ~/Documents/2021"
alias 22="cd ~/Documents/2022"
alias 23="cd ~/Documents/2023"
alias 24="cd ~/Documents/2024"
alias 25="cd ~/Documents/2025"
alias 26="cd ~/Documents/2026"
alias 27="cd ~/Documents/2027"
alias 28="cd ~/Documents/2028"
alias 29="cd ~/Documents/2029"
alias h="history"
alias c="wc -l"
alias o="xdg-open"
alias x="chmod +x"
alias gzipc="gzip | wc -c"
alias add="awk '{s+=\$1} END {print s}'"
alias m5="md5sum"
alias chr=chromium-browser
alias timemem='/usr/bin/time -f "%es - %M KB"'
alias cleantraceprofile="rm -rf /tmp/trace* /tmp/profile*"
alias newgo="cp ~/hello.go"
alias clip="xclip -selection clipboard"
alias hey="ps aux | grep"
alias exal="exa -l"

alias pshs="python -m SimpleHTTPServer"

alias ws="cd ~/workspace"
alias dev="cd ~/Dev"

alias aliases="nano ~/.bash_aliases && . ~/.bash_aliases"
alias prof="nano ~/.profile && . ~/.profile"
alias bashrc="nano ~/.bashrc && . ~/.bashrc"

alias freemem='sudo sync; sudo echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias t="ps aux | grep tomcat"
alias kt="kill -9 `ps ax | grep tomcat | grep -v grep | awk '{print $1}'`"
alias rmold="find . -mtime +5 -exec rm {} \;"
alias caret='setterm -cursor on'
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
alias ga="git add"
alias gau="git add -u && git status"
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
alias gsh="git show"
alias gsta="git stash"
alias gstaa="git stash apply"
alias gai="git add -i"
alias gap="git add -p"
alias gchp="git checkout -p"
# See https://github.com/jhermsmeier/git-branch-select
alias gbs="git branch-select"
alias gdm="git difftool --tool=meld"
alias br='git branch | grep -i'

alias ggu='go get -u'
alias gocov='go test -coverprofile=/tmp/coverage.out && go tool cover -html=/tmp/coverage.out'
alias gos="goapp serve"
alias god="goapp deploy"
alias gogo="printf \"package main\n\nimport (\n	\\\"fmt\\\"\n)\n\nfunc main() {\n	fmt.Println(\\\"Hello, playground\\\")\n}\n\" > hello.go ; mv hello.go"

alias d="docker"
alias dock="docker"

alias token="~/token.sh"
alias projects="~/projects.sh"
alias published="~/published.sh"

alias chrono="/usr/bin/time -f\"%E\""

alias gscat="gsutil cat"
alias gsls="gsutil ls"
alias gsll="gsutil ls -l"
alias gslL="gsutil ls -L"
alias gscp="gsutil cp"
alias gsmcp="gsutil -m cp"
alias gccl="gcloud config list"
alias gcu="gcloud components update"
#alias gssh="gcloud compute ssh"
alias gssh="gcloud compute ssh --zone=us-central1-f"
alias gcelist="gcloud compute instances list"
alias gcli="gcloud alpha interactive"
alias gad="gcloud app deploy"
alias gccsp="gcloud config set project"
