#!/bin/bash
##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=gsm
#SBATCH --output=GSM.%j
#SBATCH --time=24:00:00            
#SBATCH --ntasks=1                      #Request tasks
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1    #Request CPUs per task
#SBATCH --mem-per-cpu=7000

#module load Anaconda3/2021.05
source ~/.bashrc
source activate gsm_runner_testing
#python test.py -xyzfile product.xyz -isomers isomer.txt -mode SE_GSM -package ase -num_nodes 20 -mp_cores 1 > gsm.out -max_gsm_iters 50

#python cli.py -config_file config.json > gsm.out

#convert_conf.py
python test.py -xyzfile conf_continue.xyz -mode DE_GSM -package ase -mp_cores 4 > gsm2.out
#python cli.py -config_file config_DE.json > gsm.out
