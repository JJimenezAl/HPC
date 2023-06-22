#!/bin/bash
#SBATCH --output=python.%j.out
 
#SBATCH --error=python.%j.err
#SBATCH -N 1
#SBATCH --ntasks-per-node=1 

export PYTHONUNBUFFERED=TRUE
#nos ha pasado que no printeaba  y no sabiamos en que parte dle bucle cascaba.
#probar a la vez que print ("Hola", flush=True) o  print(inv,file=sys.stdout). Las dos opciones con el export del buffer
#Acordarse en script de python  import sys

Module purge
module load Python/3.7.0-foss-2018b
 
srun Python  mi_script.py
