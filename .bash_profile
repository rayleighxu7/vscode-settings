[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[33m\]\w -\$(parse_git_branch)\[\033[00m\] $ "


export PATH="/usr/local/opt/python@3.12/bin:$PATH"
