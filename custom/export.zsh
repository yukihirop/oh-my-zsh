# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

#rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

#nodenv
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

#VScode
#code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VScode" --args $* ;}

# Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#hub
eval "$(hub alias -s)"

#direnv
export EDITOR=subl
eval "$(direnv hook zsh)"

# cat syntax highlighting
alias cat='pygmentize -O style=monokai -f console256 -g'


#gnuコマンドを使うため
export PATH=$(brew --prefix gnu-sed)/libexec/gnubin:$PATH
export MANPATH=$(brew --prefix gnu-sed)/libexec/gnuman:$MANPATH
export PATH=$(brew --prefix grep)/bin:$PATH
export MANPATH=$(brew --prefix grep)/share/man:$MANPATH
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export MANPATH=$(brew --prefix coreutils)/libexec/gnuman:$MANPATH
export PATH=$(brew --prefix findutils)/libexec/gnubin:$PATH
export MANPATH=$(brew --prefix findutils)/libexec/gnuman:$MANPATH
alias strings=gstrings
alias grep=ggrep
if [ ! -e $(brew --prefix grep)/share/man/man1/grep.1 ]; then ln -s $(brew --prefix grep)/share/man/man1/{ggrep.1,grep.1}; fi

