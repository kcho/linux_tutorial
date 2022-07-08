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


