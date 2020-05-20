#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J rpkm
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se

for bin in /home/frle5739/genome_analysis/analyses/09_read_counting/SRR4342139/*.out
do
binNo="${bin///home\/frle5739\/genome_analysis\/analyses\/09_read_counting\/SRR4342139\//}"
binNo="${binNo//_count.out/}"
python /home/frle5739/genome_analysis/code/bash_commands/RPKM.py $bin /home/frle5739/genome_analysis/analyses/07_annotation/${binNo}/${binNo}.gff >> /home/frle5739/genome_analysis/analyses/09_read_counting/SRR4342139/normalised/${binNo}_normalised.out
done

for bin in /home/frle5739/genome_analysis/analyses/09_read_counting/SRR4342137/*.out
do
binNo="${bin///home\/frle5739\/genome_analysis\/analyses\/09_read_counting\/SRR4342137\//}"
binNo="${binNo//_count.out/}"
python /home/frle5739/genome_analysis/code/bash_commands/RPKM.py $bin /home/frle5739/genome_analysis/analyses/07_annotation/${binNo}/${binNo}.gff >> /home/frle5739/genome_analysis/analyses/09_read_counting/SRR4342137/normalised/${binNo}_normalised.out
done
