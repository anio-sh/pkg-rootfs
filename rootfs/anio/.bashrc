#!/bin/bash -euf

#
# This .bashrc will be executed for every bash instance spawned
#

alias anio_vmm="ANIO_VMM_DEF_FILE=/anio/env/vmm_def.mjs /anio/bin/anio_vmm"

PATH=/anio/bin/:$PATH

printf "/anio/.bashrc executed\n"
