alias fn="~/fn.sh"
alias fd=fdfind
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
alias ns="netstat -aelnptu"
alias so="echo Last command return code was \$?"
alias zou=". ~/zou.sh"
alias zoum=". ~/zoum.sh"
alias zoua=". ~/zoua.sh"
alias ..="cd .."
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
alias o.="xdg-open ."
alias x="chmod +x"
alias gzipc="gzip | wc -c"
alias add="awk '{s+=\$1} END {print s}'"
alias avg="awk '{s+=\$1 ; count+=1} END {print (s/count)}'"
alias m5="md5sum"
alias chr=chromium-browser
alias timemem='/usr/bin/time -f "%es - %M KB"'
alias cleantraceprofile="rm -rf /tmp/trace* /tmp/profile*"
alias newgo="cp ~/hello.go"
alias clip="xclip -selection clipboard"
alias ahem="ps aux | grep"
alias exal="exa -l"
alias rgi="rg -i"

alias pshs='python -m http.server'

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
alias code.="code ."
alias c.="code ."

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
alias gpullom="git pull origin main || git pull origin master"
alias gpush="git push"
alias gpusho="git push origin"
alias gpoh="git push origin HEAD"
alias gl="git log"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gchm="git checkout main || git checkout master"
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
ghrcd() { 
  gh repo clone "Deleplace/$1" && cd "$1"
}

alias ggu='go get -u'
alias gocov='go test -coverprofile=/tmp/coverage.out && go tool cover -html=/tmp/coverage.out'
alias gos="goapp serve"
alias god="goapp deploy"
alias gmix='go mod init xxx'
alias gogo="printf \"package main\n\nimport (\n	\\\"fmt\\\"\n)\n\nfunc main() {\n	fmt.Println(\\\"Hello, playground\\\")\n}\n\" > hello.go ; mv hello.go"
alias gotest='printf "package xxx\n\nimport \"testing\"\n\nfunc TestX(t *testing.T) {\n	t.Error("TODO")\n}\n" > hello_test.go ; mv hello_test.go'
alias gobench='printf "package bench\n\nimport \"testing\"\n\nfunc TestX(t *testing.T) {\n	//t.Error(\"TODO\")\n}\n\nfunc BenchmarkX(b *testing.B) {\n	for i := 0; i < b.N; i++ {\n		//\n	}\n}\n" > hello_test.go ; mv hello_test.go'
alias gtpp='go tool pprof -http :6060'
alias gtt='go tool trace -http :7070'
alias gov="go version"
alias sc=staticcheck

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
alias gconfigs='gcloud config configurations list'

# If you are in a git repository, it will cd to the root of the git repo
cdg(){
  if [ "$(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}")" == '0' ]; then
    cd $(git rev-parse --git-dir)/..
  fi
}

# Switch to the git branch having this fragment in its name
function gbr(){
  fragment="$1"
  branches=$(git branch | grep "$1" | tr "*+" "  ")
  n=$(git branch | grep -c "$1")
  if [[ "$n" == "0" ]] ; then
    echo No branch matches \"$fragment\"
  elif [[ "$n" == "1" ]] ; then
    branch=$(echo "$branches" | xargs)
    git checkout $branch
  else
    echo "$n branch names match:"
    echo "$branches"
  fi
}

