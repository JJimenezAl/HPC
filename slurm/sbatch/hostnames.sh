#!/bin/bash

#SBATCH --partition=partition


#SBATCH --nodelist=nodes[30-40]
srun hostname
