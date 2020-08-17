#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --mem 4000
#SBATCH -t 0-24:00:00
#SBATCH -o samtobam.%N.%j.out
#SBATCH -e samtobam.%N.%j.err

module load samtools/1.10-fasrc01

samtools view -b -h -o oxyJam_male.bam oxyJam_male.sam
samtools sort -o oxyJam_male.sort.bam oxyJam_male.bam
samtools index oxyJam_male.sort.bam
samtools quickcheck  oxyJam_male.sort.bam 

samtools view -b -h -o oxyJam_female_L004_001.bam oxyJam_female_L004_001.sam
samtools sort -o oxyJam_female_L004_001.sort.bam oxyJam_female_L004_001.bam
samtools index oxyJam_female_L004_001.sort.bam
samtools quickcheck oxyJam_female_L004_001.sort.bam 

samtools view -b -h -o oxyJam_female_L001_001.bam oxyJam_female_L001_001.sam
samtools sort -o oxyJam_female_L001_001.sort.bam oxyJam_female_L001_001.bam
samtools index oxyJam_female_L001_001.sort.bam
samtools quickcheck oxyJam_female_L001_001.sort.bam 
