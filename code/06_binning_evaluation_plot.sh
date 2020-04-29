#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:15:00
#SBATCH -J binning_evaluation_plot
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will plot the evaluation of the binning 

# Loading the required modules
module load bioinfo-tools
module load CheckM/1.0.12

# Performing the plotting of the evaluation using CheckM
checkm bin_qa_plot -t 2 -x fa \
/home/frle5739/genome_analysis/analyses/06_binning_evaluation/checkm \
/home/frle5739/genome_analysis/data/bins \
/home/frle5739/genome_analysis/analyses/06_binning_evaluation/plot

