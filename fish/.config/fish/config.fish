# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

# Use grep color always
set -g GREP_OPTIONS '--color=always'

set -g -x EDITOR vim
set -g -x PAGER  less

# Set dircolors
eval ( dircolors --c-shell $HOME/.dircolors.ansi-dark )

# Fix gpg key request in git
export GPG_TTY=(tty)

# Needed for java fix
wmname LG3D
