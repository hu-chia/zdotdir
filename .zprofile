#
# .zprofile
#

### browser
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER="${BROWSER:-open}"
fi

### editors
export EDITOR="${EDITOR:-vim}"
export VISUAL="${VISUAL:-vim}"
export PAGER="${PAGER:-less}"

### language
export LANG="${LANG:-en_US.UTF-8}"
export LANGUAGE="${LANGUAGE:-en}"
export LC_ALL="${LC_ALL:-en_US.UTF-8}"

### gpg
export GPG_TTY=$(tty)

### WORDCHARS
export WORDCHARS="*?_-.[]~&#$%^(){}<>"

### paths
# ensure path arrays do not contain duplicates
typeset -gU cdpath fpath mailpath path

# set the list of directories that `cd` searches
# cdpath=(
#   $cdpath
# )

# set the list of directories that zsh searches for commands
path=(
    /opt/homebrew/opt/gnu-getopt/bin(N)
    /opt/homebrew/opt/openssl@3/bin(N)
    /opt/homebrew/opt/*/libexec/gnubin(N)
    $HOME/{,s}bin(N)
    $HOME/.local/bin(N)
    $HOME/go/bin(N)
    /opt/{homebrew,local}/{,s}bin(N)
    /usr/local/{,s}bin(N)
    $path
)

### less

# set default less options
export LESS="${LESS:--g -i -M -R -S -w -z-4}"

# set the less input preprocessor
export LESSOPEN='|lesspipe.sh %s'


# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
