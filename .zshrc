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

# Prompt with path and git branch
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST
PROMPT='%F{33}%~${vcs_info_msg_0_}%f $ '
