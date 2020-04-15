#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J trimming_of_RNAreads
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will trim the paired RNA-reads using Trimmomatic. 

# Loading the required modules
module load bioinfo-tools
module load trimmomatic

# Running Trimmomatic on the RNA-reads from the two different sites.
trimmomatic PE -threads 2 -phred33 \
/home/frle5739/genome_analysis/data/raw_data/RNA_untrimmed/SRR4342137.1.fastq.gz \
/home/frle5739/genome_analysis/data/raw_data/RNA_untrimmed/SRR4342137.2.fastq.gz \
/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed/SRR4342137_paired_forward.fastq.gz \
/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed/SRR4342137_unpaired_forward.fastq.gz \
/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed/SRR4342137_paired_reverse.fastq.gz \
/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed/SRR4342137_unpaired_reverse.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50

trimmomatic PE -threads 2 -phred33 \
/home/frle5739/genome_analysis/data/raw_data/RNA_untrimmed/SRR4342139.1.fastq.gz \
/home/frle5739/genome_analysis/data/raw_data/RNA_untrimmed/SRR4342139.2.fastq.gz \
/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed/SRR4342139_paired_forward.fastq.gz \
/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed/SRR4342139_unpaired_forward.fastq.gz \
/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed/SRR4342139_paired_reverse.fastq.gz \
/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed/SRR4342139_unpaired_reverse.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50