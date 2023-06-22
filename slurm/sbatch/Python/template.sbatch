#!/bin/bash
#SBATCH --output=python.%j.out
 
#SBATCH --error=python.%j.err
#SBATCH -N 1
#SBATCH --ntasks-per-node=1 
Module purge
module load Python/3.7.0-foss-2018b
 
srun python  mi_script.py
