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
metaquast.py ~/genome_analysis/data/bins/bin_1.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_1
metaquast.py ~/genome_analysis/data/bins/bin_2.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_2
metaquast.py ~/genome_analysis/data/bins/bin_3.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_3
metaquast.py ~/genome_analysis/data/bins/bin_4.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_4
metaquast.py ~/genome_analysis/data/bins/bin_5.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_5
metaquast.py ~/genome_analysis/data/bins/bin_6.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_6
metaquast.py ~/genome_analysis/data/bins/bin_7.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_7
metaquast.py ~/genome_analysis/data/bins/bin_8.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_8
metaquast.py ~/genome_analysis/data/bins/bin_9.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_9
metaquast.py ~/genome_analysis/data/bins/bin_10.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_10
metaquast.py ~/genome_analysis/data/bins/bin_11.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_11
metaquast.py ~/genome_analysis/data/bins/bin_12.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_12
metaquast.py ~/genome_analysis/data/bins/bin_13.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_13
metaquast.py ~/genome_analysis/data/bins/bin_14.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_14
metaquast.py ~/genome_analysis/data/bins/bin_15.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_15
metaquast.py ~/genome_analysis/data/bins/bin_16.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_16
metaquast.py ~/genome_analysis/data/bins/bin_17.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_17
metaquast.py ~/genome_analysis/data/bins/bin_18.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_18
metaquast.py ~/genome_analysis/data/bins/bin_19.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_19
metaquast.py ~/genome_analysis/data/bins/bin_20.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_20
metaquast.py ~/genome_analysis/data/bins/bin_21.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_21
metaquast.py ~/genome_analysis/data/bins/bin_22.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_22
metaquast.py ~/genome_analysis/data/bins/bin_23.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_23
metaquast.py ~/genome_analysis/data/bins/bin_24.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_24
metaquast.py ~/genome_analysis/data/bins/bin_25.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_25
metaquast.py ~/genome_analysis/data/bins/bin_26.fa -t 2 -o ~/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_26


