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
