#/r!/usr/bin/fish
#
bind -M insert \ec '__fzf_cd'

bind -M insert \cf accept-autosuggestion

set -x XDG_CONFIG_HOME /home/sebi/.config

alias rc="R CMD SHLIB"
alias neovim="~/nvim.appimage"
alias nvim="~/nvim.appimage"
alias vim="~/nvim.appimage"
alias vi="~/nvim.appimage"
alias v="~/nvim.appimage"
alias R="R --no-save --no-restore"
alias r="Rscript"
alias py="python3"
alias python="python3"
alias mlr="cd ~/mlr"
alias vpr="nvim --cmd \"set rtp+=./\""
alias knit_readme="Rscript -e 'rmarkdown::render(\"README.Rmd\", output_format = \"github_document\")'"
# alias bat="batcat"
# https://askubuntu.com/questions/1341909/file-browser-and-file-dialogs-take-a-long-time-to-open-or-fail-to-open-in-all-ap
alias fix_nautilus="pkill gvfsd-trash"
alias setbg="feh --bg-scale $HOME/Pictures/wallpapers/abstract_3440x1440.png"

# git
alias gst="git status"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gl="git log --all --graph --decorate --oneline  "
alias gco="git checkout"
alias la="exa -la"


alias reset_upstream="git reset --hard @{u}"


# keybindings
# bind \cd __fzf_alt_c
# bind \cx\ct __fzf_alt_c

# get into the habit of using trash
alias rm "echo use trash"

# When try
function lol
  if not test -d ~/.lol
    mkdir ~/.lol
  end

  vi (string join '' ~/.lol/lol. $argv[1])
end

# Open config for a program passed as argument
# edit config
function ec
  if test "$argv[1]" = "vi"
    vi ~/.config/nvim/init.lua
  end

  if test "$argv[1]" = "fish"
    vi ~/.config/fish/config.fish
  end

  if test "$argv[1]" = "git"
    vi ~/.gitconfig
  end

  if test "$argv[1]" = "tmux"
    vi ~/.tmux.conf
  end

  if test "$argv[1]" = "i3"
    vi ~/.dotfiles/i3/config
  end

  if test "$argv[1]" = "clangd"
    vi ~/.dotfiles/clangd/config.yaml
  end

  if test "$argv[1]" = "R"
    vi ~/.dotfiles/R/.Rprofile
  end

  if test "$argv[1]" = "kitty"
    vi ~/.dotfiles/kitty/kitty.conf
  end
  if test "$argv[1]" = "lazygit"
    vi ~/.dotfiles/lazygit/config.yml
  end

  echo config not available
end

# source config
# https://gist.github.com/phette23/7620214
function sc
  if test "$argv[1]" = "vi"
    source ~/.config/nvim/init.lua

  else if test "$argv[1]" = "fish"
    source ~/.config/fish/config.fish

  else if test "$argv[1]" = "i3"
    i3-msg reload

  else if test "$argv[1]" = "git"
    mkdir ~/123git
    cd ~/123git
    git init
    trash .git
    cd -
    trash ~/123git
  else

    echo config not available
  end
end



set PATH /home/sebi/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin $PATH
# set PATH /home/sebi/.local/share/nvim/lsp_servers/efm $PATH
set PATH :/usr/local/go/bin $PATH
set PATH :/home/sebi/.cargo/bin $PATH
set PATH :/home/sebi/.config/i3/ $PATH
set PATH :/usr/local/texlive/2022/bin/x86_64-linux $PATH
set PATH  :/home/sebi/.rbenv/bin/ $PATH
# set PATH :/home/sebi/miniconda3/bin $PATH

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# eval /home/sebi/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# # <<< conda initialize <<<

direnv hook fish | source

status --is-interactive; and rbenv init - fish | source

eval "$(rbenv init -)"

nvm use 16.0.0
