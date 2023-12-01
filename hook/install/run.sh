#!/bin/bash -euf

# /anio/.bashrc does not need to be executable!

if ! grep -q ". /anio/.bashrc" "/etc/bash.bashrc"; then
	printf "\n" >> /etc/bash.bashrc

	printf ". /anio/.bashrc\n" >> /etc/bash.bashrc
else
	printf "/etc/bash.bashrc: already added\n"
fi
