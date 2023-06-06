# ~/.profile: executed by the command interpreter for login shells. This file is not read by bash(), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# configure firefox as default browser
xdg-settings set default-web-browser firefox.desktop

# feh --bg-scale "$HOME/Pictures/wallpapers/wallhaven-9559y1.png"

. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# change to US layout but allow for äüö
setxkbmap us altgr-intl

# make CapsLock behave like Ctrl:
setxkbmap -option ctrl:nocaps
# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape'

PATH=$PATH:/home/sebi/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin
PATH=$PATH:/usr/local/go/bin
PATH=$PATH:/home/sebi/.cargo/bin
PATH=$PATH:/home/sebi/.config/i3/
PATH=$PATH:/usr/local/texlive/2023/bin/x86_64-linux
PATH=$PATH:/home/sebi/.rbenv/bin/

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# eval /home/sebi/miniconda3/bin/conda "shell.fish" "hook" $argv | source
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# .secrets should contain stuff like API keys that I am not sharing in my public dotfiles!
if [[ -f ~/.secrets ]]
then
    # We need the source here (and e.g. not 'bash ~/.secrets' because we want to execute it in the environment in which
    # we are calling (otherwise the env variables are not available in the shell)
    source ~/.secrets
else
    echo "File .secrets not found in home directory."
fi
