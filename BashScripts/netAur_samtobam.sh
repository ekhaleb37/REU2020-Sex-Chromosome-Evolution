[#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --mem 4000
#SBATCH -t 0-24:00:00
#SBATCH -o samtobam.%N.%j.out
#SBATCH -e samtobam.%N.%j.err

module load samtools/1.10-fasrc01

samtools view -b -h -o netAur_male.bam netAur_male.sam
samtools sort -o netAur_male.sort.bam netAur_male.bam
samtools index netAur_male.sort.bam
samtools quickcheck  netAur_male.sort.bam

samtools view -b -h -o netAur_female_L004_001.bam netAur_female_L004_001.sam
samtools sort -o netAur_female_L004_001.sort.bam netAur_female_L004_001.bam
samtools index netAur_female_L004_001.sort.bam
samtools quickcheck netAur_female_L004_001.sort.bam

samtools view -b -h -o netAur_female_L001_001.bam netAur_female_L001_001.sam
samtools sort -o netAur_female_L001_001.sort.bam netAur_female_L001_001.bam
samtools index netAur_female_L001_001.sort.bam
samtools quickcheck netAur_female_L001_001.sort.bam

