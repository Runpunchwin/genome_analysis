#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:45:00
#SBATCH -J binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform binning of the assembled contigs 

# Loading the required modules
module load bioinfo-tools
module load MetaBat/2.12.1

# Performing the binning using MetaBat2
metabat2 -t 2 -i /home/frle5739/genome_analysis/data/DNA_assembly/final.contigs.fa \
-o /home/frle5739/genome_analysis/data/bins/bin
