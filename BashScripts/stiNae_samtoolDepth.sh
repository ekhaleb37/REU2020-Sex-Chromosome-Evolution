#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 4-00:00:00
#SBATCH -o samtoolDepth.%N.%j.out
#SBATCH -e samtoolDepth.%N.%j.err

module load samtools/1.10-fasrc01

samtools depth -b SN_male.chromosomes.bed -o SN_male.chromosomes.depth.txt stiNae_male.sort.bam
samtools depth -b SN_female.autosomes.bed -o SN_female.autosomes.depth.txt stiNae_female.sort.bam

#samtools depth -b SN_Male.bed -o SN_Male.depth.txt stiNae_male.sort.bam

#samtools depth -b SN_Fem.bed -o SN_fem.depth.txt stiNae_female.sort.bam

#samtools depth -b SN_Fem1.bed -o SN_Fem1.depth.txt stiNae_female_L001_001.sort.bam

#samtools depth -b SN_Fem4.bed -o SN_Fem4.depth.txt stiNae_female_L004_001.sort.bam
