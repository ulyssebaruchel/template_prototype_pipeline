#!/bin/bash
#
#SBATCH --job-name=0a_bcl2fastq2
#SBATCH --output=0a_bcl2fastq2.txt
#SBATCH --ntasks=1
#SBATCH --time=1:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=4000
#SBATCH --account=DBCDOBCAG
#SBATCH -o ./temp_logs/output_0a_bcl2fastq2.log
#SBATCH -e ./temp_logs/error_0a_bcl2fastq2.log

# Source the parameters file
source ./params_bioinfo_experiments/0_params.sh

bash ./bin/$exp/0a_bcl2fastq2.sh

wait 

# Move log files to the log directory
mv ./temp_logs/output_0a_bcl2fastq2.log $dir_log_0a
mv ./temp_logs/error_0a_bcl2fastq2.log $dir_log_0a
