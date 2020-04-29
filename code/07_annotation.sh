#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform the annotation

# Loading the required modules
module load bioinfo-tools
module load prokka/1.12-12547ca

# Performing the annotation using Prokka
# Loops over the input bins and uses the filepath to create a prefix for the files
for f in ~/genome_analysis/data/bins/*.fa; 
do i="${f%.fa}";
j="${i//data\/bins\//analyses/07_annotation/}"; 
k="${i///home\/frle5739\/genome_analysis\/data\/bins\//}";
if [[ $j == bin_1 || $j == bin_2 || $j == bin_3 || $j == bin_21 ]]
then 
prokka --outdir $j --kingdom Archea --prefix $k $i
else
prokka --outdir $j --prefix $k $i
fi; 
done
