#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J read_counting
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform the read counting

# Loading the required modules
module load bioinfo-tools
module load htseq/0.9.1

# Performing the read count using htseq
for bin in ~/genome_analysis/data/mapped_RNA/SRR4342137/*
do
htseq-count -f bam -r pos -t CDS -i ID 
done

for bin in ~/genome_analysis/data/mapped_RNA/SRR4342139/*
do
htseq-count -f bam -r pos -t CDS -i ID
done
