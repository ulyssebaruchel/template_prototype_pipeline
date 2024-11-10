#!/bin/bash

# File that defines default parameters

seq_date="240814"
runID="240814_M01275_0091_000000000-LM6HL"

exp="exp1"

# Work directory (from where the code is launched) as an absolute path
dir_work="/home/ubaruchel/template_prototype_pipeline"

# Data directory
dir_data="${dir_work}/data/${seq_date}"

# Create data directory if it does not exist without crushing it if it does
# mkdir -p $dir_data

# New scratch subdirectory
new_scratch_dir="/data/scratch/DBC/UBCN/CANCDYN/ubaruchel/template_prototype_pipeline/${seq_date}"
# mkdir -p "${new_scratch_dir}"

# Create symbolic link to scratch subdirectory
# ln -s "${new_scratch_dir}" "${dir_work}/data/${seq_date}"

# Create symbolic link from seq data in RDS to scratch subdirectory. Example:
# ln -s "/data/rds/DBC/UBCN/CANCDYN/SHARED/5. Data/3. Sequencing/data/smart-seq3/240814_M01275_0091_000000000-LM6HL_backup" "${new_scratch_dir}/${runID}"

### PARAMS - 0a BCL to FASTQ -----------------------------------------------------

# Convert raw BCL files to FASTQ files

# Sequencing run folder directory (with .bcl files etc.)
dir_input_0a="${dir_data}/${runID}"
# Output directory of .bcl to .fastq conversion
dir_output_0a="${dir_data}/BaseCalls"
dir_log_0a="${dir_data}/${exp}/logs"

### PARAMS - 0b FASTQC on initial data -----------------------------------------------------

# Perform quality control on the initial FASTQ files 

dir_input_0b="${dir_output_0a}"
dir_output_0b="${dir_data}/${exp}/0b_fastqc"
dir_log_0b="${dir_log_0a}"

