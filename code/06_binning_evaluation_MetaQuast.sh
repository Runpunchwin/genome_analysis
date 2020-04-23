#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J binning_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform an evaluation of the binning 

# Loading the required modules
module load bioinfo-tools
module load quast/4.5.4

# Performing the evaluation using metaquast.py
metaquast.py /home/frle5739/genome_analysis/data/bins/bin_1.fa -t 2 -o /home/frle5739/genome_analysis/analyses/06_binning_evaluation/metaquast