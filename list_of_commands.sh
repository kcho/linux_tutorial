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









# 5th Aug Friday
# 1. Get the example code
# 2. Revise
# variable vs string
# for loop
#   1. echo 01 02 03 04 05 06 07 08 09 
#   2. print all RA's name in each line
#   3. create folders with each RA's name 
#      under `~/linux_tutorial/loop`
#   4. create empty files under each RA's
#      folder under `~/linux_tutorial/loop` 
#      with "code_" and the RA's name in
#      the file name (use touch)

# New
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


# -------------------
# bash script
# -------------------




# Back slash in the code



















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
