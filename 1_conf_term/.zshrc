# --- PCRE (nécessaire pour rematch_pcre, surtout sur Arch)
if zmodload -e zsh/pcre 2>/dev/null; then
    zmodload zsh/pcre
fi
setopt rematch_pcre


# fzf
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f ~/.config/fzf/config ] && source ~/.config/fzf/config

# ~/.zshrc – shells interactifs

setopt autocd
setopt interactivecomments
setopt magicequalsubst
setopt nonomatch
setopt notify
setopt numericglobsort
setopt promptsubst

WORDCHARS=${WORDCHARS//\/}
PROMPT_EOL_MARK=""

# Keybindings
bindkey -e
bindkey ' ' magic-space
bindkey '^U' backward-kill-line
bindkey '^[[3;5~' kill-word
bindkey '^[[3~' delete-char
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[5~' beginning-of-buffer-or-history
bindkey '^[[6~' end-of-buffer-or-history
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[Z' undo

# Completion
autoload -Uz compinit
compinit -d ~/.cache/zcompdump

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=50000
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
alias history="history 0"

TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'

# lesspipe (Arch)
[ -x /usr/bin/lesspipe.sh ] && eval "$(SHELL=/bin/sh lesspipe.sh)"

# Couleur du prompt
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
force_color_prompt=yes

if command -v tput >/dev/null && tput setaf 1 >&/dev/null; then
    color_prompt=yes
else
    color_prompt=
fi

# Variables

[ -f ~/.priv/.git_identities ] && . ~/.priv/.git_identities

# Prompt  séparés
[ -f ~/.config/zsh/promptrc ] && . ~/.config/zsh/promptrc




# Couleurs + alias
if command -v dircolors >/dev/null; then
    eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"

    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

# Aliases séparés
[ -f ~/.zsh_aliases ] && . ~/.zsh_aliases

# Autosuggestions
for as in \
    /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh \
    /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
do
    [ -f "$as" ] && source "$as" && break
done
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#2DD4FF'

# command-not-found (Arch)
[ -f /usr/share/zsh/site-functions/command-not-found.zsh ] && \
    source /usr/share/zsh/site-functions/command-not-found.zsh

command_not_found_handler() {
    # On regarde si pkgfile trouve quelque chose
    if pkgfile "$1" >/dev/null 2>&1; then
        echo "you need to install : $1"
    else
        # Sinon on affiche le message classique
        echo "zsh: command not found: $1"
    fi
}
