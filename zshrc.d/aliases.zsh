#
# aliases
#

# suffix aliases (ie: `cd ..4`)
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep -E'
alias -g S='| sort'
alias -g L='| less'
alias -g M='| more'
alias -g ..2='../..'
alias -g ..3='../../..'
alias -g ..4='../../../..'
alias -g ..5='../../../../..'
alias -g ..6='../../../../../..'
alias -g ..7='../../../../../../..'
alias -g ..8='../../../../../../../..'
alias -g ..9='../../../../../../../../..'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# single character shortcuts - be sparing!
alias _=sudo
alias d='dirs -v'
alias l=ls

# mask built-ins with better defaults
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ping='ping -c 5'
alias vi=vim

# more ways to ls
alias ls='eza'
alias ll='ls -lh'
alias la='ls -lAh'
alias ldot='ls -ld .*'

# fix typos
alias quit='exit'
alias cd..='cd ..'

# tar
alias tarls="tar -tvf"
alias untar="tar -xf"

# date/time
alias timestamp="date '+%Y-%m-%d %H:%M:%S'"
alias datestamp="date '+%Y-%m-%d'"

# find
# alias fd='find . -type d -name'
# alias ff='find . -type f -name'

# disk usage
alias biggest='du -s ./* | sort -nr | awk '\''{print $2}'\'' | xargs du -sh'
alias dux='du -x --max-depth=1 | sort -n'
alias dud='du -d 1 -h'
alias duf='du -sh *'

# url encode/decode
alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print (ul.quote_plus(sys.argv[1]))"'

# history
# list the ten most used commands
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias history="fc -li"

# misc
alias please=sudo
alias zshrc='${EDITOR:-vim} "${ZDOTDIR:-$HOME}"/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd ${ZDOTDIR:-~}'

# utils
alias padding='dd iflag=fullblock bs=16 status=none conv=sync'
alias array2str='grep -E -o "[0-9]*" | xargs -n 1 printf "%04x\n" | xxd -r -p'

# kitty
alias icat="kitty +kitten icat"
alias kssh="kitty +kitten ssh"

# lftp
alias goto="lftp sftp://jump -e \"cd \$(lftp -c 'connect sftp://jump && find -d 5' | fzf )\""

# develop tools
alias mvn="mvnd"
alias gcc="gcc-13"

# notes
alias eisvogel='pandoc --template "eisvogel" --listings --pdf-engine "xelatex" -V CJKmainfont="PingFang SC"'

