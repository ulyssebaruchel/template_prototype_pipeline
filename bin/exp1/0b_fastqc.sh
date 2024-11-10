#!/bin/bash

# Always add these two commands to your scripts when using a environment
eval "$(conda shell.bash hook)"
source $CONDA_PREFIX/etc/profile.d/mamba.sh

# Source the parameters file
source ./params_bioinfo_experiments/0_params.sh

# Set variables
dir_input=$dir_input_0b
dir_output=$dir_output_0b
dir_log=$dir_log_0b

mamba activate env_fastqc

# Create the output and log directories if they don't exist
mkdir -p "$dir_output"
mkdir -p "$dir_log"

fastqc -t 8 -o "$dir_output" $dir_input/*.fastq.gz

wait

mamba deactivate