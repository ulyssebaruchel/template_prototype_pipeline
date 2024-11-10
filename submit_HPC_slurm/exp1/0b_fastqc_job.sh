#!/bin/bash
#
#SBATCH --job-name=0b_fastqc
#SBATCH --output=0b_fastqc.txt
#SBATCH --ntasks=1
#SBATCH --time=00:20:00
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=1000
#SBATCH --account=DBCDOBCAG
#SBATCH -o ./temp_logs/output_0b_fastqc.log
#SBATCH -e ./temp_logs/error_0b_fastqc.log

# Source the parameters file
source ./params_bioinfo_experiments/0_params.sh

bash ./bin/$exp/0b_fastqc.sh

wait 

# Move log files to the log directory
mv ./temp_logs/output_0b_fastqc.log $dir_log_0b
mv ./temp_logs/error_0b_fastqc.log $dir_log_0b
