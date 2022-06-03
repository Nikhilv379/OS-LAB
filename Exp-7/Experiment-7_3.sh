# Delete the lines containing a specific word

if [ $# -lt 1 ]; then
	echo 'Check arguments once'
else
	for file in *.txt; do
		sed -i '/$1/d' ./file > ./'new'$file
	done
fi