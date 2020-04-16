#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J assembly_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform an assembly evaluation of the metagenomic assembly 

# Loading the required modules
module load bioinfo-tools
module load quast/4.5.4

# Performing the assembly evaluation using metaquast.py
metaquast.py /home/frle5739/genome_analysis/data/DNA_assembly/final.contigs.fa -t 2 -o /home/frle5739/genome_analysis/analyses/04_assembly_evaluation \
-1 /home/frle5739/genome_analysis/data/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/home/frle5739/genome_analysis/data/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz \
-2 /home/frle5739/genome_analysis/data/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/home/frle5739/genome_analysis/data/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz \
