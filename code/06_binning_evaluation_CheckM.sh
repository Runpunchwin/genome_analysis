#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J binning_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform an evaluation of the binning 

# Loading the required modules
module load bioinfo-tools
module load CheckM/1.0.12

# Performing the evaluation using CheckM
checkm lineage_wf -t 4 -x fa --reduced_tree /home/frle5739/genome_analysis/data/bins /home/frle5739/genome_analysis/analyses/06_binning_evaluation/checkm
