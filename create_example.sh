#!/bin/bash
outdir=${HOME}/linux_tutorial


# 1. make complex structures
mri_data_dir=${outdir}/MRI_ROOT/rawdata
modalities='dwi anat'
subjects='01 02 03 04 05 06 07 08 09'
sessions='1 2 3 4'
for subject in ${subjects}
do
    subject_name=`echo sub-${subject}`
    for session in ${sessions}
    do
        session_name=`echo ses-${session}`
        for modality in ${modalities}
        do
            modality_dir=${mri_data_dir}/${subject_name}/${session_name}/${modality}
            if [ ! -d ${modality_dir} ]
            then
                mkdir -p ${modality_dir}
            fi

            file_to_write=${modality_dir}/${subject_name}_${session_name}_${modality}.nii.gz
            touch ${file_to_write}
        done
    done
done


# 1.1 create some pseudo-randomness
mri_data_dir=${outdir}/MRI_ROOT/rawdata
modalities='dwi anat'
subjects='01 03 05 06 08'
sessions='1 3'
for subject in ${subjects}
do
    subject_name=`echo sub-${subject}`
    for session in ${sessions}
    do
        session_name=`echo ses-${session}`
        for modality in ${modalities}
        do
            modality_dir=${mri_data_dir}/${subject_name}/${session_name}/${modality}
            file_to_write=${modality_dir}/${subject_name}_${session_name}_${modality}.nii.gz
            rm ${file_to_write}
        done
    done
done


# 2. copy reconall
SOURCE=`dirname ${BASH_SOURCE[0]}`
cp ${SOURCE}/example_recon_log.txt ${outdir}/recon-all.log


# 3. create random code for ack
code_dir=${outdir}/codes
modalities='dwi anat'
names='kevin thomas rick'
for name in ${names}
do
    code_dir_for_name=${code_dir}/${name}
    if [ ! -d ${code_dir_for_name} ]
    then
        mkdir -p ${code_dir_for_name}
    fi

    for modality in ${modalities}
    do
        code_loc=${code_dir_for_name}/run_${modality}_analysis.sh
        if [ -e ${code_loc} ]
        then
            rm ${code_loc}
        fi

        echo "bet x y" >> ${code_loc}
        echo "fslmaths x -mas mask y" >> ${code_loc}

        if [[ "${name}" == "kevin" && "${modality}" == "anat" ]]
        then
            echo "antsRegistration a b c d" >> ${code_loc}
        fi

    done
done


# csv example
line_to_write="2752,3015961,7338,DNRAI_VNTG24M24K,05383,08/30/2016,180,F,,s3://DNRAC_nerat_l1/usmbsiisn_3585/00_50S338_2016-08-30/name_tag.tgz,fMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
echo ${line_to_write} > ${outdir}/complex_line.csv

line_to_write1="2752,3015961,7338,DNRAI_VNTG24M24K,05383,08/30/2016,180,F,,s3://DNRAC_nerat_l1/usmbsiisn_3855/00_50S338_2016-08-30/name_tag.tgz,fMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
line_to_write2="2753,3015962,7339,DRNIA_VTNG24M42K,05338,01/30/2017,170,M,,s3://DNRAC_nerat_l1/usmbsiisn_3558/00_50S338_2017-01-30/name_tag.tgz,dMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
line_to_write3="2754,3015963,7340,DRNIA_VNGT242MK4,05833,06/03/2019,175,F,,s3://DNRAC_nerat_l1/usmbsiisn_8355/00_50S338_2019-06-03/name_tag.tgz,tMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
line_to_write4="2755,3015964,7341,DNARI_VNTG42M42K,03583,03/30/2016,179,M,,s3://DNRAC_nerat_l1/usmbsiisn_385/00_50S338_2016-03-30/name_tag.tgz,fMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
echo ${line_to_write1} > ${outdir}/multi_lines.csv
echo ${line_to_write2} >> ${outdir}/multi_lines.csv
echo ${line_to_write3} >> ${outdir}/multi_lines.csv
echo ${line_to_write4} >> ${outdir}/multi_lines.csv


# rm loop folder created in the class
if [ -d ${outdir}/loop ]
then
    rm -rf ${outdir}/loop
fi



# diff
# csv example
line_to_write1="2752,3015961,7338,DNRAI_VNTG24M24K,05383,08/30/2016,180,F,,s3://DNRAC_nerat_l1/usmbsiisn_3855/00_50S338_2016-08-30/name_tag.tgz,fMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
line_to_write2="2753,3015962,7339,DRNIA_VTNG24M42K,05338,01/30/2017,170,M,,s3://DNRAC_nerat_l1/usmbsiisn_3558/00_51S338_2017-01-30/name_tag.tgz,dMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
line_to_write3="2754,3015963,7340,DRNIA_VNGT242MK4,05833,06/03/2019,175,F,,s3://DNRAC_nerat_l1/usmbsiisn_8355/00_50S338_2019-06-03/name_tag.tgz,tMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
line_to_write4="2755,3015964,7341,DNARI_VNTG42M42K,03583,03/30/2016,179,M,,s3://DNRAC_nerat_l1/usmbsiisn_385/00_50S338_2016-03-30/name_tag.tgz,fMRI,42.90,dMRI,Live,DICOM,MRI,SIEMENS,Prisma_fit,3T,,404.0,.261,70,256 0 0 256,,HFS,,No,Yes,Practice Linux Project (PLP)"
echo ${line_to_write1} > ${outdir}/multi_lines2.csv
echo ${line_to_write2} >> ${outdir}/multi_lines2.csv
echo ${line_to_write3} >> ${outdir}/multi_lines2.csv
echo ${line_to_write4} >> ${outdir}/multi_lines2.csv
