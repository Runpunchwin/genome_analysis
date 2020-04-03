#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J QC_of_trimmed_reads
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will loop through the trimmed read-data and perform a Quality Control (QC)
# on each file using FastQC. The QC results will then be saved in the correct folder.

# Loading the required modules
module load bioinfo-tools
module load FastQC/0.11.8

# Running FastQC on all compressed fastq-files in the directories for DNA- and RNA-reads.
fastqc -f fastq -t 2 -o /home/frle5739/genome_analysis/analyses/01_QC_reads/RNA_trimmed_QC /home/frle5739/genome_analysis/data/trimmed_data/*.fastq.gz
