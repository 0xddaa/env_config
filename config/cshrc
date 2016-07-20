# $FreeBSD: src/etc/root/dot.cshrc,v 1.30.10.1.4.1 2010/06/14 02:09:06 kensmith Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -alF
alias py	python
alias ls 'gnuls --color=auto --show-control-chars'

# A righteous umask
umask 22

setenv	EDITOR  vim
setenv	PAGER	less
setenv	BLOCKSIZE	K
setenv LC_CTYPE en_US.ISO8859-1
setenv LC_ALL zh_TW.UTF-8
setenv LANG zh_TW.UTF-8
setenv LSCOLORS "DxGxcxdxCxegedabagacad"


if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "`/bin/hostname -s`# "
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

set autolist
set prompt="%B%{\033[1;33m%}%n%{\033[m%}%{\033[1;37m%}@%{\033[m%}%{\033[1;34m%}%M%{\033[m%}%{\033[1;33m%} [%{\033[m%}%{\033[1;31m%}%~%{\033[m%}%{\033[1;33m%}] %{\033[1;37m%}%Y-%W-%D %T\n%{\033[1;37m%}> %{\033[m%}"
complete sudo 'n/-l/u/' 'p/1/c/'
