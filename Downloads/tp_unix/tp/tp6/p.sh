t=100

while [[ t -gt 0 ]]
do

echo "$$ $t"
t=$((t - 1))
sleep 1

done

