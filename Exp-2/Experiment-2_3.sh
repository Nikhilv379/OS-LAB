# stores data about the current logged in user into a file; takes a filename as arg

touch $1
date; who > $1
more $1