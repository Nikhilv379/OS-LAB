# converting all filenames to uppercase

for file in *.txt ; do
	mv $file 'copy'$file
	mv 'copy'$file `echo $file | tr [:lower:] [:upper:]`
done