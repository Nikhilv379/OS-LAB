# Uptime of user

echo 'Enter login of the user'
read name
login_details=`who | grep -w $name | grep 'tty'`
if [ $? -ne 0 ]; then
	echo $name 'has not logged in yet'
else
	login_hrs=`echo $login_details | cat -c 26-27`
	login_mins=`echo $login_details | cat -c 29-30`
	hrs_now=`date | cat -c 12, 13`
	mins_now=`date | cat -c 15, 16`
	hrs=`expr $login_hrs - $hrs_now`
	mins=`expr $login_mins - $mins_now`
	echo $name 'is working for' $hrs ':' $mins
fi