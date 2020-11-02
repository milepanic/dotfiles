# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mile/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

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
plugins=(git zsh-autosuggestions)

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
# CLI
alias zshconfig="subl $HOME/.zshrc"
alias zshsource="source $HOME/.zshrc"
alias update="sudo apt update"
alias upgrade="sudo apt update && sudo apt full-upgrade -y"
alias install="sudo apt install"
alias remove="sudo apt remove"
alias autoremove="sudo apt autoremove -y"
alias ks="bash ~/.kde/Autostart/disable_panel_shadow.sh"
# Laravel
alias art="php artisan"
alias serve="php artisan serve"
alias migrate="php artisan migrate"
alias fresh="php artisan migrate:fresh --seed"
alias phpunit="vendor/bin/phpunit --colors"
alias qwork="php artisan queue:work"
alias cache-all="composer dumpautoload -o && php artisan config:cache && php artisan route:cache && php artisan view:cache"
alias clear-all="composer dumpautoload && php artisan config:clear && php artisan route:clear && php artisan view:clear"
# Git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gnah="git reset --hard && git clean -df"
# Docker
alias dk='docker'
alias dkc='docker-compose'
alias dkcu='docker-compose up -d'
alias dkcd='docker-compose down'
alias dkcb='docker-compose build'
alias dkce='docker-compose exec'
alias dart='docker-compose exec -u "$UID" web php /var/www/html/artisan'
alias drart='docker-compose exec web php /var/www/html/artisan'
dexe() {
    docker exec -u $UID -it $1 bash
}
drexe() {
    docker exec -it $1 bash
}
dip() {
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1
}
alias dockerize="sh ~/dockerize.sh"
# Vagrant
alias vgsubl="subl ~/Homestead/Homestead.yaml"
alias vg="cd ~/Homestead && vagrant up && vagrant ssh"
alias vgssh="cd ~/Homestead && vagrant ssh"
alias vgr="cd ~/Homestead && vagrant reload --provision && vagrant ssh"
alias hosts="sudo subl /etc/hosts"
# PHPStorm
alias blur="( cd $HOME ; ./blur.sh 'jetbrains-phpstorm' 'jetbrains-phpstorm' 1 )"
