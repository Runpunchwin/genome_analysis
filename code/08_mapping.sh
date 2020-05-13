#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform the RNA-mapping

# Loading the required modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.10

# Performing the mapping using bwa
# Saving the path to the RNA data
RNAreads="/home/frle5739/genome_analysis/data/trimmed_data/RNA_trimmed_modified"

# Looping through the bins
for bin in /home/frle5739/genome_analysis/data/bins/*.fa
do
bwa index $bin
# Saving the bin-number as a variable (e.g. bin_3)
binNo="${bin///home\/frle5739\/genome_analysis\/data\/bins\//}"
binNo="${binNo//.fa/}"

bwa mem -t 2 $bin ${RNAreads}/SRR4342137_paired_forward.fastq.gz ${RNAreads}/SRR4342137_paired_reverse.fastq.gz > /home/frle5739/genome_analysis/data/mapped_RNA/SRR4342137/${binNo}_mapped_RNA_SRR4342137.sam
bwa mem -t 2 $bin ${RNAreads}/SRR4342139_paired_forward.fastq.gz ${RNAreads}/SRR4342139_paired_reverse.fastq.gz > /home/frle5739/genome_analysis/data/mapped_RNA/SRR4342139/${binNo}_mapped_RNA_SRR4342139.sam

# Piping the samtools-commands in order to avoid large temporary files
samtools view -b /home/frle5739/genome_analysis/data/mapped_RNA/SRR4342137/${binNo}_mapped_RNA_SRR4342137.sam |
 samtools sort -@ 2 - > /home/frle5739/genome_analysis/data/mapped_RNA/SRR4342137/${binNo}_mapped_RNA_SRR4342137.bam
samtools view -b /home/frle5739/genome_analysis/data/mapped_RNA/SRR4342139/${binNo}_mapped_RNA_SRR4342139.sam |
 samtools sort -@ 2 - > /home/frle5739/genome_analysis/data/mapped_RNA/SRR4342139/${binNo}_mapped_RNA_SRR4342139.bam

# Remove the large, uncompressed files
rm /home/frle5739/genome_analysis/data/mapped_RNA/SRR4342137/${binNo}_mapped_RNA_SRR4342137.sam
rm /home/frle5739/genome_analysis/data/mapped_RNA/SRR4342139/${binNo}_mapped_RNA_SRR4342139.sam
done
