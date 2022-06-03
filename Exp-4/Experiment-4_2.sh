# matches a string in file or creates a file then matches

echo 'Program:' $0
echo 'Number of arguments:' $#
echo 'The arguments are:' $*
if [ -f 'userInfo.txt' ]; then
	echo 'We found'
	grep -i $1 $2
	echo 'Done'
else
	touch 'userInfo.txt'
	echo 'We found'
	grep -i $1 $2
	echo 'Done'
fi