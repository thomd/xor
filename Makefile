SHELL = /bin/bash # set to enable <(command) process substitution
BINDIR ?= $(HOME)/bin
SOURCEDIR = $(PWD)

link:
	@while read -r f; do echo "${BINDIR}/$${f}"; ln -s -f ${SOURCEDIR}/$${f} ${BINDIR}/$${f}; done < <(find . -perm +0111 -type f -exec basename {} \;)

