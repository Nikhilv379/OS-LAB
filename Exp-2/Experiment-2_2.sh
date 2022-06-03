# Requires a CL arg as the file name, in which the current username will be stored

touch $1
whoami > $1
more $1