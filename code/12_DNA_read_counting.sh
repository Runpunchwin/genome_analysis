#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J read_counting
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform the read counting on DNA

# Loading the required modules
module load bioinfo-tools
module load htseq/0.9.1

# Saving the filepaths as variables
binpath33="/home/frle5739/genome_analysis/data/mapped_DNA/SRR4342133"
binpath29="/home/frle5739/genome_analysis/data/mapped_DNA/SRR4342129"
prokkaPath="/home/frle5739/genome_analysis/analyses/07_annotation"

# Performing the read count using htseq
# Only looking at bins with contamination <10%
for bin in bin_2 bin_4 bin_5 bin_6 bin_8 bin_9 bin_10 bin_11 bin_13 bin_14 bin_15 bin_16 bin_17 bin_18 bin_21 bin_22 bin_24 bin_26
do
htseq-count -f bam -r pos -t CDS -i ID $binpath33/${bin}_mapped_DNA_SRR4342133.bam <(sed '/##FASTA/,$d' $prokkaPath/${bin}/${bin}.gff) > /home/frle5739/genome_analysis/analyses/12_DNA_read_counting/SRR4342133/${bin}_count.out
done

for bin in bin_2 bin_4 bin_5 bin_6 bin_8 bin_9 bin_10 bin_11 bin_13 bin_14 bin_15 bin_16 bin_17 bin_18 bin_21 bin_22 bin_24 bin_26
do
htseq-count -f bam -r pos -t CDS -i ID $binpath29/${bin}_mapped_DNA_SRR4342129.bam <(sed '/##FASTA/,$d' $prokkaPath/${bin}/${bin}.gff) > /home/frle5739/genome_analysis/analyses/12_DNA_read_counting/SRR4342129/${bin}_count.out
done
