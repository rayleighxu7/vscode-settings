alias base='cd; cd VSCode/; ls'
alias python='python3'
alias pip='pip3'
alias imptools_update='pip install --force-reinstall --no-cache-dir git+https://github.com/JasperLabs/imptools'
alias 00='streamlit run app.py'

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=${PATH}:/usr/local/mysql/bin

export HOMEBREW_GITHUB_API_TOKEN=$(security find-generic-password -s 'Homebrew GitHub Token' -w)

cfs() {
  sudo mkdir -p /Volumes/caruso-data
  sudo mount -t nfs \
    -o resvport,nolocks,locallocks,intr,rsize=65536,wsize=65536 \
    caruso-mini-2.betta-pancake.ts.net:/Volumes/ST20000D-encrypted \
    /Volumes/caruso-data
}
