if [ -f $1 ]
then
echo $1 'is file'
elif [ -d $1 ]
then
echo $1 'is directory'
else
echo $1 'is somethinge else'
fi