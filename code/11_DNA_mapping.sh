#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform the DNA-mapping

# Loading the required modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.10

# Performing the mapping using bwa
# Saving the path to the DNA data
DNAreads="/home/frle5739/genome_analysis/data/raw_data/DNA_trimmed"

# Looping through the bins
for bin in /home/frle5739/genome_analysis/data/bins/*.fa
do
bwa index $bin
# Saving the bin-number as a variable (e.g. bin_3)
binNo="${bin///home\/frle5739\/genome_analysis\/data\/bins\//}"
binNo="${binNo//.fa/}"

bwa mem -t 2 $bin ${DNAreads}/SRR4342133_1.paired.trimmed.fastq.gz ${DNAreads}/SRR4342133_2.paired.trimmed.fastq.gz > /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133/${binNo}_mapped_DNA_SRR4342133.sam
bwa mem -t 2 $bin ${DNAreads}/SRR4342129_1.paired.trimmed.fastq.gz ${DNAreads}/SRR4342129_2.paired.trimmed.fastq.gz > /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129/${binNo}_mapped_DNA_SRR4342129.sam

# Piping the samtools-commands in order to avoid large temporary files
samtools view -b /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133/${binNo}_mapped_DNA_SRR4342133.sam |
 samtools sort -@ 2 - > /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133/${binNo}_mapped_DNA_SRR4342133.bam
samtools view -b /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129/${binNo}_mapped_DNA_SRR4342129.sam |
 samtools sort -@ 2 - > /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129/${binNo}_mapped_DNA_SRR4342129.bam

# Remove the large, uncompressed files
rm /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133/${binNo}_mapped_DNA_SRR4342133.sam
rm /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129/${binNo}_mapped_DNA_SRR4342129.sam
done
