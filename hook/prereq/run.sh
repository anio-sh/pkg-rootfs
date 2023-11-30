#!/bin/bash -euf

# hard dependencies
which qemu-system-x86_64 > /dev/null
which socat > /dev/null
which daemonize > /dev/null
which sensors > /dev/null
which tree > /dev/null

# users
id "anio" > /dev/null
id "anio_dev" > /dev/null
id "anio_test" > /dev/null
id "anio_prod" > /dev/null

# mount points
printf "Validating mount points ...\n"

mountpoint "/mnt/anio_tmpfs"
mountpoint "/mnt/anio_ssd"
mountpoint "/mnt/anio_hdd"

printf "\n"
