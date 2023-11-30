# path											owner				file mode
# External Storage
d:/mnt/anio_<type>/								anio:anio			default

# lost+found
?d:/mnt/anio_<type>/lost+found/					root:root			0700

# tmp dir for this filesystem
?d:/mnt/anio_<type>/tmp/						anio:anio			1770

# environment files
?d:/mnt/anio_<type>/env/						anio:anio			default
?d:/mnt/anio_<type>/env/<env>/					anio_<env>:anio		default
?f:/mnt/anio_<type>/env/<env>/data.qcow2		anio_<env>:anio		default
