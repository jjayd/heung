set nocompatible
export LC_ALL=ko_KR.UTF-8
export SPARK_HOME="/usr/local/Cellar/apache-spark/2.4.5/libexec"
export JAVA_HOME="$(/usr/libexec/java_home)"
export TERM=xterm-256color
export MACOSX_DEPLOYMENT_TARGET=10.14
function csv() {
    local filename=$1
    local cmd=''
    case "$filename" in
    *.gz | *.tgz )
        cmd='gzip -cd'
        ;;
    *)
        cmd='cat'
        ;;
    esac
    bash -c "$cmd $filename | column -s, -t | less -S"
}

autoload -U promptinit; promptinit
prompt purer
alias mount_nas='sshfs -o compression=yes -o reconnect -o cache_timeout=60 ~/nas0 nas0.prem.forg.skelterlabs.com:/storage/nas0'
alias nas='ssh -t nas0.prem.forg.skelterlabs.com "cd /storage/nas0/home/jungjina ; bash"'
ZSH_DISABLE_COMPFIX="true"
alias ll="ls -al"
alias python="python3.6"
alias mongod="mongod --dbpath ~/data/db"
export GOROOT=/usr/local/go
export GOPATH=$HOME
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export IRIS_FOURSQUARE_CLIENT_ID=UWVLZPZHP5N013WDMUQBUYRJNQGWGFATNLS5RJPPQLKKGWYY
export IRIS_FOURSQUARE_CLIENT_SECRET=04RKXFZAG35B3DUV3YNYCLHP5G4W4EEYBX033PXDA0UV5HNQ
export IRIS_DARKSKY_API_SECRET=9e7682f3f996b744313331f171c92d12
export IRIS_MONGO_USERNAME_READONLY=iris-eng
export IRIS_MONGO_PASSWORD_READONLY=MrbNyZQqrE2u3p3I
export IRIS_STUDIO_SECRET='0;v*T2$s&:jI6!vC*~AHb0ASA!*a1#;\m`1[2W)dtN-%P0OE[G3}a.~tHYA,w]8'
export IRIS_CRYPTO_SECRET_SHA256=2SMnBMxNqfCs2de9
export IRIS_CRYPTO_SECRET_AES=zL22q2B30qInJNMd
export IRIS_CRYPTO_SECRET_AES_IV_PARAMETER=152oa7ybRBkkUvKA
export CUE_PRIVATE_KEY=`cat ~/key/private_key_pkcs8.pem`

# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jungjina/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""
#"robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
