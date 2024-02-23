
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	# Path to your oh-my-zsh installation.
	export ZSH="$HOME/.oh-my-zsh"

	path+=('/home/sebi/.local/share/applications')
	path+=('/home/sebi/bin')

	ZSH_THEME="robbyrussell"
	# Uncomment the following line to use case-sensitive completion.
	# CASE_SENSITIVE="true"

	# Uncomment the following line to use hyphen-insensitive completion.
	# Case-sensitive completion must be off. _ and - will be interchangeable.
	# HYPHEN_INSENSITIVE="true"

	# Uncomment one of the following lines to change the auto-update behavior
	# zstyle ':omz:update' mode disabled  # disable automatic updates
	# zstyle ':omz:update' mode auto      # update automatically without asking
	# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

	# Uncomment the following line to change how often to auto-update (in days).
	# zstyle ':omz:update' frequency 13

	# Uncomment the following line if pasting URLs and other text is messed up.
	# DISABLE_MAGIC_FUNCTIONS="true"

	# Uncomment the following line to disable colors in ls.
	# DISABLE_LS_COLORS="true"

	# Uncomment the following line to disable auto-setting terminal title.
	# DISABLE_AUTO_TITLE="true"

	# Uncomment the following line to enable command auto-correction.
	# ENABLE_CORRECTION="true"

	# Uncomment the following line to display red dots whilst waiting for completion.
	# You can also set it to another string to have that shown instead of the default red dots.
	# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
	# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
	# COMPLETION_WAITING_DOTS="true"

	# Uncomment the following line if you want to disable marking untracked files
	# under VCS as dirty. This makes repository status check for large repositories
	# much, much faster.
	# DISABLE_UNTRACKED_FILES_DIRTY="true"

	# Uncomment the following line if you want to change the command execution time
	# stamp shown in the history command output.
	# You can set one of the optional three formats:
	# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
	# or set a custom format using the strftime function format specifications,
	# see 'man strftime' for details.
	# HIST_STAMPS="mm/dd/yyyy"

	# Would you like to use another custom folder than $ZSH/custom?
	# ZSH_CUSTOM=/path/to/new-custom-folder

	# Which plugins would you like to load?
	# Standard plugins can be found in $ZSH/plugins/
	# Custom plugins may be added to $ZSH_CUSTOM/plugins/
	# Example format: plugins=(rails git textmate ruby lighthouse)
	# Add wisely, as too many plugins slow down shell startup.
	plugins=(git z)

	source $ZSH/oh-my-zsh.sh

	# User configuration

	# export MANPATH="/usr/local/man:$MANPATH"

	# You may need to manually set your language environment
	# export LANG=en_US.UTF-8

	# Preferred editor for local and remote sessions
	if [[ -n $SSH_CONNECTION ]]; then
	  export EDITOR='vim'
	else
	  export EDITOR='nvim'
	fi


	# Set personal aliases, overriding those provided by oh-my-zsh libs,
	# plugins, and themes. Aliases can be placed here, though oh-my-zsh
	# users are encouraged to define aliases within the ZSH_CUSTOM folder.
	# For a full list of active aliases, run `alias`.
	#
	# Example aliases

	function s {
	    mkdir -p ~/scratch
	    filename="~/scratch/$(date +%Y-%m-%d).$1"
	    touch "$filename"
	    vim "$filename"
	}

	alias zshconfig="vim ~/.zshrc"
	alias ohmyzsh="vim ~/.oh-my-zsh"


	alias ipy="ipython"
	alias R="R --no-save --no-restore"
	alias killr="pkill -f exec/R"

	# alias neovim="~/nvim.appimage"
	# alias nvim="~/nvim.appimage"
	alias v="~/nvim.appimage"
	alias r="Rscript"
	alias knit_readme="Rscript -e 'rmarkdown::render(\"README.Rmd\", output_format = \"github_document\")'"

	alias beartooth="ssh sfische6@beartooth.arcc.uwyo.edu"
	alias beartooth_marc="ssh mbecke16@beartooth.arcc.uwyo.edu"

	# https://askubuntu.com/questions/1341909/file-browser-and-file-dialogs-take-a-long-time-to-open-or-fail-to-open-in-all-ap
	alias fix_nautilus="pkill gvfsd-trash"
	alias setbg="feh --bg-scale $HOME/Pictures/wallpapers/abstract_3440x1440.png"

	function light {
	    kitty +kitten themes --reload-in=all My Tokyo Day
	    export BAT_THEME="OneHalfLight"
	}

	function dark {
	    kitty +kitten themes --reload-in=all My Tokyo Night
	    export BAT_THEME="OneHalfDark"
	}

	hour=$(date +"%H")
	if [[ $hour -ge 6 && $hour -lt 18 ]]; then
	  light
	else
	  dark
	fi

	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

	source ~/.secrets

	# >>> conda initialize >>>
	# !! Contents within this block are managed by 'conda init' !!
	__conda_setup="$('/home/sebi/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
	    eval "$__conda_setup"
	else
	    if [ -f "/home/sebi/miniconda3/etc/profile.d/conda.sh" ]; then
		. "/home/sebi/miniconda3/etc/profile.d/conda.sh"
	    else
		export PATH="/home/sebi/miniconda3/bin:$PATH"
	    fi
	fi
	unset __conda_setup
	# <<< conda initialize <<<

elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS specific configurations
	# If you come from bash you might have to change your $PATH.
	# export PATH=$HOME/bin:/usr/local/bin:$PATH

	# Path to your oh-my-zsh installation.
	export ZSH=$HOME/.oh-my-zsh

	# Set name of the theme to load --- if set to "random", it will
	# load a random theme each time oh-my-zsh is loaded, in which case,
	# to know which specific one was loaded, run: echo $RANDOM_THEME
	# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
	ZSH_THEME="robbyrussell"

	# Set list of themes to pick from when loading at random
	# Setting this variable when ZSH_THEME=random will cause zsh to load
	# a theme from this variable instead of looking in $ZSH/themes/
	# If set to an empty array, this variable will have no effect.
	# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

	# Uncomment the following line to use case-sensitive completion.
	# CASE_SENSITIVE="true"

	# Uncomment the following line to use hyphen-insensitive completion.
	# Case-sensitive completion must be off. _ and - will be interchangeable.
	# HYPHEN_INSENSITIVE="true"

	# Uncomment one of the following lines to change the auto-update behavior
	# zstyle ':omz:update' mode disabled  # disable automatic updates
	# zstyle ':omz:update' mode auto      # update automatically without asking
	# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

	# Uncomment the following line to change how often to auto-update (in days).
	# zstyle ':omz:update' frequency 13

	# Uncomment the following line if pasting URLs and other text is messed up.
	# DISABLE_MAGIC_FUNCTIONS="true"

	# Uncomment the following line to disable colors in ls.
	# DISABLE_LS_COLORS="true"

	# Uncomment the following line to disable auto-setting terminal title.
	# DISABLE_AUTO_TITLE="true"

	# Uncomment the following line to enable command auto-correction.
	# ENABLE_CORRECTION="true"

	# Uncomment the following line to display red dots whilst waiting for completion.
	# You can also set it to another string to have that shown instead of the default red dots.
	# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
	# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
	# COMPLETION_WAITING_DOTS="true"

	# Uncomment the following line if you want to disable marking untracked files
	# under VCS as dirty. This makes repository status check for large repositories
	# much, much faster.
	# DISABLE_UNTRACKED_FILES_DIRTY="true"

	# Uncomment the following line if you want to change the command execution time
	# stamp shown in the history command output.
	# You can set one of the optional three formats:
	# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
	# or set a custom format using the strftime function format specifications,
	# see 'man strftime' for details.
	# HIST_STAMPS="mm/dd/yyyy"

	# Would you like to use another custom folder than $ZSH/custom?
	# ZSH_CUSTOM=/path/to/new-custom-folder

	# Which plugins would you like to load?
	# Standard plugins can be found in $ZSH/plugins/
	# Custom plugins may be added to $ZSH_CUSTOM/plugins/
	# Example format: plugins=(rails git textmate ruby lighthouse)
	# Add wisely, as too many plugins slow down shell startup.
	plugins=(git z)

	source $ZSH/oh-my-zsh.sh

	# User configuration

	# export MANPATH="/usr/local/man:$MANPATH"

	# You may need to manually set your language environment
	# export LANG=en_US.UTF-8

	# Preferred editor for local and remote sessions
	# if [[ -n $SSH_CONNECTION ]]; then
	#   export EDITOR='vim'
	# else
	#   export EDITOR='mvim'
	# fi

	# Compilation flags
	# export ARCHFLAGS="-arch x86_64"

	# Set personal aliases, overriding those provided by oh-my-zsh libs,
	# plugins, and themes. Aliases can be placed here, though oh-my-zsh
	# users are encouraged to define aliases within the ZSH_CUSTOM folder.
	# For a full list of active aliases, run `alias`.
	#
	# Example aliases
	# alias zshconfig="mate ~/.zshrc"
	# alias ohmyzsh="mate ~/.oh-my-zsh"

	alias v="nvim"
	alias R="R --no-save --no-restore"
    alias r="Rscript"
    alias la="exa --long --all"

	alias beartooth="ssh sfische6@beartooth.arcc.uwyo.edu"
	alias coclo="kitten ssh -l ubuntu 10.195.1.50"
	alias gpu="ssh fischers@gpuserver.stat.uni-muenchen.de"

    export PATH="/Users/sebi/Library/Python/3.9/bin:$PATH"

	function light {
	    kitty +kitten themes --reload-in=all My Tokyo Day
	    export BAT_THEME="OneHalfLight"
	}
fi


