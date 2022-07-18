# Friday, July 08, 2022
# Run this line by line, preferably type it, rather than copy them.
bash create_example.sh

# move to the example data directory
cd ~/linux_tutorial

# echo
echo haha
echo hoho

# date
date

# touch
touch hahaa
ls

touch hohoho
ls -l

cat hahaa


# tree
tree

# find
find ./ -iname '*anat.nii.gz'
find ~/linux_tutorial/MRI_ROOT -iname '*anat.nii.gz' -exec rm {} \;

# awk
find ./ -iname '*dwi.nii.gz' | awk -F '/' '{print $2}'
find ./ -iname '*dwi.nii.gz' | awk -F '/' '{print $3}'
find ./ -iname '*dwi.nii.gz' | awk -F '/' '{print $4}'

# >, >>
find ./ -iname '*anat.nii.gz' | awk -F '/' '{print $7}' > anat_file_name.txt
cat anat_file_name.txt

find ./ -iname '*anat.nii.gz' | awk -F '/' '{print $6}' > anat_file_name.txt
cat anat_file_name.txt

find ./ -iname '*anat.nii.gz' | awk -F '/' '{print $7}' >> anat_file_name.txt
cat anat_file_name.txt

# pipe
cat recon-all.log

# head
cat ~/linux_tutorial/recon-all.log |head

# tail
cat ~/linux_tutorial/recon-all.log |tail

# grep
cat ~/linux_tutorial/recon-all.log |grep kevin

# sed 
sed -i 's/kevin_cho/subject01/g' recon-all.log

# mailx
cat ~/linux_tutorial/recon-all.log |grep subject01 |mail -s summary_of_data kc244@research.partners.org


#- simple loop
	#- for i in 1 2 3 4
	  #do
		  #echo ${i}
	  #done
	  
	  
	  #find ./ -iname '*anat.nii.gz'
	  
	  
	  #for i in `find ./ -iname '*anat.nii.gz'
	#- do
	#-     echo ${i}
	#- done
	  
	#- basename
	#- dirname
#- function
	#- function get() {
	  #for i in $@
	  #do
		  #echo ${PWD}/${i}
	  #done
	  #}
#- crontab

#Vim
#- do the same thing that simple loop does
# 
#Python
#- basics
	#- loop
	#- function
	#- different modules
# test driven development (TDD)

# awk
cd ~/linux_tutorial
cat complex_line.csv
cat complex_line.csv | awk -F ',' '{print $10}'
cat complex_line.csv | awk -F ',' '{print $10}' | awk -F '/' '{print $1}'
cat complex_line.csv | awk -F ',' '{print $10}' | awk -F '/' '{print $5}'
cat complex_line.csv | awk -F ',' '{print $10}' | awk -F '/' '{print $5}' | awk -F '_' '{print $3}'

cat multi_lines.csv
cat multi_lines.csv | awk -F ',' '{print $10}'
cat multi_lines.csv | awk -F ',' '{print $10}' | awk -F '/' '{print $5}'
cat multi_lines.csv | awk -F ',' '{print $10}' | awk -F '/' '{print $5}' | awk -F '_' '{print $3}'


# ack
cd ~/linux_tutorial/codes
tree
ack antsRegistration


# loop
a=1
echo a
echo $a

a=abc
echo a
echo $a

a=~/linux_tutorial/codes
echo $a
ls $a

a=haha
echo $a
echo $a$a
echo aa
echo $aa
echo ${a}a


for ra_name in kevin thomas rick
do
    echo ${ra_name}
done

for ra_name in kevin thomas rick a b c d
do
    echo ${ra_name}
done

for subject_number in 01 02 03 04
do
    echo ${subject_number}
done

for subject_number in 01 02 03 04
do
    echo subject_$subject_number
done

cd ~/linux_tutorial/MRI_ROOT/rawdata
for subject_number in 01 02 03 04 05 06 07 08 09
do
	echo ${subject_number}
done
for subject_number in 01 02 03 04 05 06 07 08 09
do
	echo sub-${subject_number}
done
for subject_number in 01 02 03 04 05 06 07 08 09
do
	ls sub-${subject_number}
done
for subject_number in 01 02 03 04 05 06 07 08 09
do
	echo ${subject_number}
ls sub-${subject_number}
done


# task
cd ~/linux_tutorial/
for number in 01 02 03 04 05 06 07 08 09
do
	echo ${number}
done
for name in kevin haha Jeong hoho thomas rick
do
	echo ${name}
done
mkdir loop
for name in kevin haha Jeong hoho thomas rick
do
	echo ${i}
for name in kevin haha Jeong hoho thomas rick
do
	echo ${name}
mkdir loop/${name}
done
for name in kevin haha Jeong hoho thomas rick
do
	touch loop/${name}/code_${name}
done
