# pdisplay range of lines

file=$1
start=$2
end=$3
sed -n $start,$end\P $file