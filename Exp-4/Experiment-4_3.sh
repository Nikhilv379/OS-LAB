# performs arithmetic operations

echo "Write 2 numbers"
read num1 num2
echo "$num1 + $num2 = "`expr $num1+$num2 | bc`
echo "$num1 - $num2 = "`expr $num1-$num2 | bc`
echo "$num1 x $num2 = "`expr $num1*$num2 | bc -l`
echo "$num1 / $num2 = "`expr $num1/$num2 | bc -l`