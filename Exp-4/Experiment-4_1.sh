# matches a string in file or creates a file then matches

if [ -f 'userInfo.txt' ]; then
	echo 'Enter a string for case insensitive search'
	read string
	echo 'We found'
	grep -i $string 'userInfo.txt'
else
	touch 'userInfo.txt'
	echo "Since a file was not already present, we created one with the name userInfo.txt with this text inside."
	echo 'Enter a string for case insensitive search'
	read string
	echo "Since a file was not already present, we created one with the name userInfo.txt with this text inside." >> 'userInfo.txt'
	echo 'We found'
	grep -i $string 'userInfo.txt'
fi