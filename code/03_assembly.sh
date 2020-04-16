#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:30:00
#SBATCH -J DNA_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform a metagenomic assembly of DNA-reads. 

# Loading the required modules
module load bioinfo-tools
module load megahit

# Performing the assembly using Megahit
megahit -t 2 --kmin-1pass --k-min 65 --k-max 105 --k-step 10 \
-1 /home/frle5739/genome_analysis/data/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/home/frle5739/genome_analysis/data/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz \
-2 /home/frle5739/genome_analysis/data/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/home/frle5739/genome_analysis/data/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz \
-o /home/frle5739/genome_analysis/data/DNA_assembly
