#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J rpkm
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se

python rpkm.py /home/frle5739/genome_analysis/analyses/09_read_counting/SRR4342139/bin_22_count.out /home/frle5739/genome_analysis/analyses/07_annotation/bin_22/bin_22.gff >> /home/frle5739/genome_analysis/analyses/09_read_counting/SRR4342139/normalised/bin_22_normalised.out
