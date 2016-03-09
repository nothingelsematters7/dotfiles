# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PATH=$PATH:~/Library/Python/2.7/bin/
source ~/Library/Python/2.7/bin/virtualenvwrapper.sh

if [ ${OSTYPE} == "darwin15" ]; then
    alias ls="gls"
fi

alias ll="ls -la --color=auto --group-directories-first"
alias rgrep='fgrep -R'
#alias irb='irb --readline -r irb/completion'
alias siftnb='sift -n --binary-skip'
alias vim='nvim'
alias todo="vim ~/todo.md"

#export CC=/usr/local/bin/gcc-5
#export CPP=/usr/local/bin/cpp-5
#export CXX=/usr/local/bin/g++-5

export GOPATH=/Users/a_menkov/Work/psa/go/
export GO15VENDOREXPERIMENT=1
export GOBIN=/Users/a_menkov/go/bin
export PATH=$GOBIN:/usr/local/sbin:/usr/local/bin:$PATH
export MYSQL_PS1="\u@\h/\d> "
export GREP_OPTIONS=--colour=auto

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=nvim
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1
export NVIM_TUI_ENABLE_TRUE_COLOR=1
export ALTERNATE_EDITOR=vim
export PAGER=less
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}:${PWD}\007"'
export HISTCONTROL="erasedups"
export HISTIGNORE="&:ls:[bf]g:exit"
export HISTSIZE=15000
export HISTFILESIZE=15000
export BASHRC=1

shopt -s histappend
shopt -s cdspell

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='[\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]]\n\$ '
export PS2='continue-> '

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ $(command -v brew) ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f /usr/share/doc/tmux/examples/bash_completion_tmux.sh ]; then
    . /usr/share/doc/tmux/examples/bash_completion_tmux.sh
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
