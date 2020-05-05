#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform the DNA- and RNA-mapping

# Loading the required modules
module load bioinfo-tools
module load bwa/0.7.17

# Performing the mapping using bwa