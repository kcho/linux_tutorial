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
mail
ack
diff
which
wget

# for loop
for i in 1 2 3 4
do
    echo ${i}
done

# writing a script
basename
dirname
a=`basename ~/linux_tutorial`
b=`dirname ~/linux_tutorial`
vi
cd ~/linux_tutorial

# ? - one character
# [abc] - a, b, or c
# [123] - 1, 2, or 3
# [123] - 1, 2, or 3
# [0-9] - any one digit
# [a-z] - any one small alphabet
# * - one or more characters

ls MRI_ROOT/rawdata
ls MRI_ROOT/rawdata/sub-0[123]
ls MRI_ROOT/rawdata/sub-0[876]

ls MRI_ROOT/rawdata/sub-0[123]/ses-[23]/d?
ls MRI_ROOT/rawdata/sub-0[123]/ses-[23]/d??

ls MRI_ROOT/rawdata/sub-0[123]/ses-[23]/d*


# creating function
function print_haha() {
    for i in $@
    do
        echo haha ${i}
    done
}

metacharacters
less
ifconfig
