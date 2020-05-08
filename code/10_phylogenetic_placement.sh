#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J phylogenetic_placement
#SBATCH --mail-type=ALL
#SBATCH --mail-user fredrik@levingotland.se
# This script will perform the phylogenetic placement

# load the required modules
module load bioinfo-tools
module load phylophlan
module load FastTree
module load usearch/5.2.32
module load biopython
module load muscle

# The directory where I want to store the phylophlan results
outdir="~/genome_analysis/analyses/10_phylogenetic_placement/phylophlan"
# creating the directories that phylophlan looks for:
# Specifying the project name as "thrash_metagenome"
# this is also where you should put symlinks to your input files
mkdir -p $outdir/input/thrash_metagenome
mkdir -p $outdir/output
mkdir -p $outdir/data/ppaalns
# symlink phylophlan data files
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/*.bz2 $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppaalns/*.bz2 $outdir/data/ppaalns/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppafull.tax.txt $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/taxcuration/ $outdir/taxcuration
# symlinks to input files
for bin in ~/genome_analysis/analyses/07_annotation/*
do
ln -sf $bin/*.faa $outdir/input/thrash_metagenome/
done

cd $outdir

# Performing the phylogenetic placement using phylophlan
phylophlan.py -i -t --nproc 2 thrash_metagenome
