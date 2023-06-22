#!/bin/bash

#SBATCH -N 2
#SBATCH --mem=3G 

##SBATCH -n 20
#Con esta opcion me ejecuta 10 cores por nodo
#SBATCH --ntasks-per-node=20


module load GCCcore/7.3.0
module load GCC
#module use --append /opt/ohpc/pub/moduledeps/gnu8
module load openmpi3/3.1.4
#que cuadre numero de nodos + tareas por cpu. En este caso 20*2
mpirun -np 40  hostname