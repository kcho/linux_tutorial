echo
ssh
date
touch
tree
find
awk
sed
grep
head
tail
less
mail
ack
diff
which
ifconfig
wget

for i in 1 2 3 4
do
    echo ${i}
done

function print_haha() {
    for i in $@
    do
        echo haha ${i}
    done
}
