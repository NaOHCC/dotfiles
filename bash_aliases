# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

myfind() {
    find / -not \( -path /mnt -prune \) -name "$1" 2>&1 | grep -v 'Permission denied'
}
export TERMINFO=/usr/share/terminfo
# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias pc='proxychains'
alias cl='clear'
alias dc='docker compose'
alias ps='ps -ef'
alias f=myfind
alias curl="curl -w '\n'"
