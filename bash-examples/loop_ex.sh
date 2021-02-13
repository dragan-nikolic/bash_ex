count=0

names=(
    "dragan"
    "zika"
    "pera"
)

for x in ${names[@]}
do
    count=$(($count+1))
    echo "$count $x"
done
