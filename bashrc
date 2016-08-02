# bash completion 
. /usr/local/share/bash-completion/bash_completion.sh

export HISTCONTROL=ignoredups
export HISTSIZE=1000
ulimit -S -c 0
set -o vi

# path 
export PATH=\
$HOME/build/bin:\
$PATH

export LD_LIBRARY_PATH=\
$HOME/build/lib:
$HOME/build/src/gv/lib:
$LD_LIBRARY_PATH

export PKG_CONFIG_PATH=$HOME/build/lib/pkgconfig
export GV_DIR=$HOME/build/src/gv

# GNU dircolor 
eval `gdircolors -b $HOME/.dircolors`

# BSD dircolor 
#DIR=Ex
#SYM_LINK=Gx
#SOCKET=Fx
#PIPE=dx
#EXE=Cx
#BLOCK_SP=Dx
#CHAR_SP=Dx
#EXE_SUID=hb
#EXE_GUID=ad
#DIR_STICKY=Ex
#DIR_WO_STICKY=Ex
#export LSCOLORS="$DIR$SYM_LINK$SOCKET$PIPE$EXE$BLOCK_SP$CHAR_SP$EXE_SUID$EXE_GUID$DIR_STICKY$DIR_WO_STICKY"

# alias 
alias vi='vim'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias ls='gls -XFh --color=auto --group-directories-first'
alias vp='mupdf -A 2 -r 144'
alias lpr='/usr/local/bin/lpr -o fit-to-page -o sides=two-sided-long-edge'
alias gf='gfortran48 -rpath=/usr/local/lib/gcc48'
alias torrent='aria2c --file-allocation=none'

# man 
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export PROMPT_COMMAND='DEFTITLE="${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}"; echo -ne "\033]0;${TITLE:-$DEFTITLE}\007"'
export PS1="\n\[\e[00;34m\]┌─[\[\e[01;31m\u\e[00;34m\]]─[\[\e[01;32m\]\h\[\e[00;34m\]]─[\[\033[01;34m\]\w\[\033[00;34m\]]\[\e[01;31m\]\n\[\e[00;34m\]└──\[\e[01;31m\]>>\[\e[0m\] "

function cd 
{
	if [ -z "$1" ]
	then 
		builtin cd 
	else 
		builtin cd "$1" 
	fi
	gls -XFh --color=auto --group-directories-first
}

function ..  { cd "../$@"; }
function ..2 { cd "../../$@"; }
function ..3 { cd "../../../$@"; }
function ..4 { cd "../../../../$@"; }
function ..5 { cd "../../../../../$@"; }

function snap {
	if [[ "$1" != "" ]]; then
		scrot -q 100 -s $1.png
    else
		echo -n "Please specify a name: "
		read name
		scrot -s $name.png
    fi
}

function mp3encode { 
	[[ -n "$1" ]] && ffmpeg -i "$1" -c:a libmp3lame -b:a 320k $2 
}
