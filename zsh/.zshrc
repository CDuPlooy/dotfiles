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

# Preferred editor for local and remote sessions
export EDITOR=vim

# Custom locations
export NOTES=/home/$USER/Documents/Notes
export PROJECTS=/home/$USER/Projects
export DOTFILES=$PROJECTS/dotfiles
STRING_TRACE=$PROJECTS/stringtrace

# PATH exports
# Using the variable MY_PATHS, that way I can distinguish between what I added to PATH and what applications added to path.
# It also helps keep the configuration a little cleaner. 
export MY_PATHS=$STRING_TRACE
export PATH=$MY_PATHS:$PATH

# Source custom functions
for script in $(ls $DOTFILES/zsh/scripts/)
do
     source $DOTFILES/zsh/scripts/$script
done
