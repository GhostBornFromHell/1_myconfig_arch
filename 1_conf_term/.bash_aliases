export LS_COLORS="$LS_COLORS:ow=30;44:"
export LS_OPTIONS='--color=auto --group-directories-first '
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;33m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
export LESS_TERMCAP_ue=$'\E[0m'

alias c='clear'

alias ls='ls $LS_OPTIONS'
alias l='ls $LS_OPTIONS -l'
alias ll='ls $LS_OPTIONS -la'
alias la='ls $LS_OPTIONS -A'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

alias els='eza --icons -h --group-directories-first'
alias el='eza --icons -lh --group-directories-first'
alias ell='eza --icons -lah --group-directories-first'
alias ela='eza --icons -Ah --group-directories-first'

alias a..='cd /'
alias 1..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../..'

alias 755='chmod 755'
alias 700='cmod 700'
alias 600='chmod 600'

alias py3w='python3 -m http.server'
alias py2w='python -m SimpleHTTPServer'
alias serve='python -m SimpleHTTPServer'

alias icat='kitten icat'

alias ok="echo ok🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸"
alias ko="echo ko😭😭😭😭😭😭😭😭😭😭😭😭"

alias ssh='TERM=xterm-256color ssh'

# need lynx
alias getlinks='lynx -dump -nonumbers -list_decoded -listonly -hiddenlinks=listonly -unique_urls'
alias getsource='lynx -source'
alias getcontent='lynx -dump -nonumbers -nolist'

alias cf='function _cf(){
    [[ -z "$1" ]] && { echo "Usage: cf <fichier>"; return 1; }
    echo 0 > "$1"
    echo "ok"
    cat "$1"
}; _cf'

alias add='function _add(){
    [[ -z "$1" ]] && { echo "Usage: add <content> <fichier>"; return 1; }
    echo "$1" >> "$2"
    echo "ok"
    cat "$2"
}; _add'

alias ghupdates='function _ghupdates(){
   
    git add .
    git commit -m "New updates"
    git push
     
 }; _ghupdates'

alias ghnew='function _ghnew(){
    REPO_NAME="$1"
    REPO_VISIBILITY="$2"

    if [[ -z "$REPO_NAME" || -z "$REPO_VISIBILITY" ]]; then
        echo "Usage: ghnew <nom_du_repo> <public/private>"
        return 1
    fi

    if [[ "$REPO_VISIBILITY" != "public" && "$REPO_VISIBILITY" != "private" ]]; then
        echo "Valeur invalide. Utilise public ou private."
        return 1
    fi

    # Initialiser le dépôt si ce n’est pas déjà fait
    if [[ ! -d ".git" ]]; then
        git init
    fi
    
    echo "# New repo open" > README.md || ko

    git add .
    git commit -m "New repo open"

    # Créer le repo GitHub et push
    gh repo create "$REPO_NAME" --"$REPO_VISIBILITY" --source=. --push
}; _ghnew'
