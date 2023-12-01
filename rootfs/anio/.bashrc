#!/bin/bash -euf

#
# This .bashrc will be executed for every bash instance spawned
#

alias vmm="/anio/bin/anio_vmm /anio/env/vmm_def.mjs"

PATH=/anio/bin/:$PATH

printf "/anio/.bashrc executed\n"
