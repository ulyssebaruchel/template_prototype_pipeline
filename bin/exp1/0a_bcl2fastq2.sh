#!/bin/bash
#

# Always add these two commands to your scripts when using a environment
eval "$(conda shell.bash hook)"
source $CONDA_PREFIX/etc/profile.d/mamba.sh

# Load the bcl2fastq2 module
module load bcl2fastq2/2.20.0

# Source the parameters file
source ./params_bioinfo_experiments/0_params.sh

# Set variables
dir_input=$dir_input_0a
dir_output=$dir_output_0a
dir_log=$dir_log_0a


# Create the output directory if it does not already exist
mkdir -p $dir_output
# Create the log directory if it does not already exist
mkdir -p $dir_log

# Run bcl2fastq2 

bcl2fastq \
--create-fastq-for-index-reads \
--runfolder-dir $dir_input \
--output-dir $dir_output \
--mask-short-adapter-reads 0 

