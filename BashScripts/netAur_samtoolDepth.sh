#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 4-00:00:00
#SBATCH -o samtoolDepth.%N.%j.out
#SBATCH -e samtoolDepth.%N.%j.err

module load samtools/1.10-fasrc01

samtools depth -b NA_male.chromosomes.bed -o NA_male.chromosomes.depth.txt netAur_male.sort.bam
samtools depth -b NA_female.autosomes.bed -o NA_female.autosomes.depth.txt netAur_female.sort.bam


#samtools depth -b NA_Male.bed -o NA_Male.depth.txt netAur_male.sort.bam

#samtools depth -b NA_Fem.bed -o NA_fem.depth.txt netAur_female.sort.bam

#samtools depth -b NA_Fem1.bed -o NA_Fem1.depth.txt netAur_female_L001_001.sort.bam

#samtools depth -b NA_Fem4.bed -o NA_Fem4.depth.txt netAur_female_L004_001.sort.bam


