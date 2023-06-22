#!/bin/bash
#SBATCH --comment=773320000
#SBATCH -a, --array=<indexes>
#SBATCH --array=0-4 #Desglose en 5 tares en el mismo nodo

#SBATCH --time=1200
#SBATCH --mem=2048
#SBATCH --time=1200
#SBATCH --partition=partition
#SBATCH --nodelist=
#SBATCH --account=partition
#SBATCH --mem-per-cpu=3072 o 3G
#SBATCH --qos=class_a
#SBATCH --ntasks=1
#SBATCH --output=output_%j.txt
#SBATCH --error=error_output_%j.txt
#SBATCH --job-name=calc_pi.py

SBATCH -N 1 # nodes requested
#SBATCH -n 1 # tasks requested  #  --ntasks Logical processor per node
#SBATCH -c 4 # cores requested # --cpus-per-task en caso de multiprocessing mejor esta 

module load  YYY

module load XXX

srun [comando] 