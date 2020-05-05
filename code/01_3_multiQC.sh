#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J multiQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will summarize the Quality Control (QC) performed on the reads

# Loading the required modules
module load bioinfo-tools
module load MultiQC/1.8

# Running MultiQC on all QC-results for DNA- and RNA-reads
# multiqc -o /home/frle5739/genome_analysis/analyses/01_QC_reads/multiqc /home/frle5739/genome_analysis/analyses/01_QC_reads/DNA_trimmed_QC

multiqc -o /home/frle5739/genome_analysis/analyses/01_QC_reads/multiqc/modified /home/frle5739/genome_analysis/analyses/01_QC_reads/RNA_trimmed_QC_mod /home/frle5739/genome_analysis/analyses/01_QC_reads/RNA_untrimmed_QC

