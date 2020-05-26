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
binpath="/home/frle5739/genome_analysis/data/bins"

# Looping through the bins
for bin in bin_2 bin_4 bin_5 bin_6 bin_8 bin_10 bin_11 bin_13 bin_14 bin_15 bin_16 bin_17 bin_18 bin_21 bin_22 bin_24 bin_26
do
bwa index $binpath/${bin}.fa
# Saving the bin-number as a variable (e.g. bin_3)
# binNo="${bin///home\/frle5739\/genome_analysis\/data\/bins\//}"
# binNo="${binNo//.fa/}"

bwa mem -t 2 $binpath/${bin}.fa ${DNAreads}/SRR4342133_1_paired_trimmed.fastq.gz ${DNAreads}/SRR4342133_2_paired_trimmed.fastq.gz > /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133/${bin}_mapped_DNA_SRR4342133.sam
bwa mem -t 2 $binpath/${bin}.fa ${DNAreads}/SRR4342129_1_paired_trimmed.fastq.gz ${DNAreads}/SRR4342129_2_paired_trimmed.fastq.gz > /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129/${bin}_mapped_DNA_SRR4342129.sam

# Piping the samtools-commands in order to avoid large temporary files
samtools view -b /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133/${bin}_mapped_DNA_SRR4342133.sam |
 samtools sort -@ 2 - > /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133/${bin}_mapped_DNA_SRR4342133.bam
samtools view -b /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129/${bin}_mapped_DNA_SRR4342129.sam |
 samtools sort -@ 2 - > /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129/${bin}_mapped_DNA_SRR4342129.bam

# Remove the large, uncompressed files
rm /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133/${bin}_mapped_DNA_SRR4342133.sam
rm /home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129/${bin}_mapped_DNA_SRR4342129.sam
done
