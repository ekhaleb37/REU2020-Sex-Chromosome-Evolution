#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 4-00:00:00
#SBATCH -o samtoolDepth.%N.%j.out
#SBATCH -e samtoolDepth.%N.%j.err

module load samtools/1.10-fasrc01

samtools depth -b OJ_male.chromosomes.bed -o OJ_male.chromosomes.depth.txt oxyJam_male.sort.bam
samtools depth -b OJ_female.autosomes.bed -o OJ_female.autosomes.depth.txt oxyJam_female.sort.bam

#samtools depth -b OJ_Male.bed -o OJ_Male.depth.txt oxyJam_male.sort.bam

#samtools depth -b OJ_Fem.bed -o OJ_fem.depth.txt oxyJam_female.sort.bam

#samtools depth -b OJ_Fem1.bed -o OJ_Fem1.depth.txt oxyJam_female_L001_001.sort.bam

#samtools depth -b OJ_Fem4.bed -o OJ_Fem4.depth.txt oxyJam_female_L004_001.sort.bam


