# Aliases
alias base='cd; cd Projects/; ls'
alias python='python3'
alias pip='pip3'
alias imptools_update='pip install --force-reinstall --no-cache-dir git+https://github.com/JasperLabs/imptools'
alias 00='streamlit run app.py'

# NFS mount helper
cfs() {
  sudo mkdir -p /Volumes/caruso-data
  sudo mount -t nfs \
    -o resvport,nolocks,locallocks,intr,rsize=65536,wsize=65536 \
    caruso-mini-2.betta-pancake.ts.net:/Volumes/ST20000D-encrypted \
    /Volumes/caruso-data
}

# Prompt: green virtualenv, white path, yellow git branch
autoload -Uz vcs_info
precmd() { vcs_info }

# Show git branch name in yellow
zstyle ':vcs_info:git:*' formats ' %F{226}(%b)%f'

setopt PROMPT_SUBST
PROMPT='%F{34}${VIRTUAL_ENV:+(${VIRTUAL_ENV:t}) }%f%F{15}%~%f${vcs_info_msg_0_} $ '
