# Path to your oh-my-zsh installation.
export ZSH="/home/connor/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Locale Settings
LC_CTYPE=en_ZA.UTF-8
LC_ALL=en_ZA.UTF-8
# Preferred editor for local and remote sessions
export EDITOR=emacs

# Custom locations
export NOTES=/home/$USER/Documents/Notes
export PROJECTS=/home/$USER/Projects
export DOTFILES=$PROJECTS/dotfiles
STRING_TRACE=$PROJECTS/stringtrace

# PATH exports
# Using the variable MY_PATHS, that way I can distinguish between what I added to PATH and what applications added to path.
# It also helps keep the configuration a little cleaner. 
export MY_PATHS=$STRING_TRACE
export PATH=$DOTFILES/zsh/scripts/:$MY_PATHS:$PATH

# Source custom functions
for script in $(ls $DOTFILES/zsh/scripts/*.sh)
do
     source $script
done

# Disable bracketed paste
unset zle_bracketed_paste
