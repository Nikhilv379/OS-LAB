# This scripts creates a directory, enters it, creates a file and asks the user to write into it and then enters the input into the file
# checks if a directory of name 'directory-1' exists or not
if [ ! -d 'directory-1' ]; then
	mkdir 'directory-1'
	echo 'directory-1 is created'
	cd directory-1
	pwd

	# create a file 'file1.txt'
	touch 'file1.txt'
	echo 'file1.txt created, to write into it press 1, else press 0'
	choice=-1
	# reads user input to make a choice
	while [ $choice -ne 0 ] || [ $choice -ne 1]; do
		read choice
		if [ $choice -eq 1 ]; then
			echo 'Write a line'
			read REPLY
			echo $REPLY > file1.txt
			break
		elif [ $choice -eq 0 ]; then
			echo 'Sure'
			break
		else
			echo 'Please select a valid option (0 or 1)'
		fi
	done
	cat 'file1.txt'

#  if directory exists, then go into it, print a message and user's current location (i.e. inside the directory)
else
	cd directory-1
	echo 'directory-1 already exists'
	pwd
	ls -l
fi

# go back to original working directory
cd ..
pwd

