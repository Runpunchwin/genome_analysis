#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J assembly_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform an evaluation of the binning 

# Loading the required modules
module load bioinfo-tools
module load CheckM/1.0.12

# Performing the evaluation using CheckM

