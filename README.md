An "experiment" here refers to a computational experiment, two experiments could be two different processings of the same raw data, or to the same processing of two different datasets.

- `bin` folder: contains the scripts for each experiments.
- `submit_HPC_slurm` folder: contains the SBATCH scripts to submit the scripts in `bin` to the Slurm workload manager of the HPC.
- `data` folder: contains symbolic links to the RDS (where the raw sequencing data is) and to scratch directory (where the results, including intermediates, are stored for each experiment).
- `params_bioinfo_experiments` folder: contains the parameter file with explanations of processing steps for each experiment. The relevant parameter file is sourced by `params_bioinfo_experiments/0_params.sh0_params.sh`.
- `temp_logs`: temporary location for log files before they are automatically moved to the log directory of the running experiment (unless a certain kind of error occurs).
- `notebooks` folder: contains the Jupyter / RMarkdown notebooks for tbe downstream analysis of each experiment.
- `resources` folder: contains various resources, e.g., protocol cell barcodes.
- `misc` folder: miscellaneous items.