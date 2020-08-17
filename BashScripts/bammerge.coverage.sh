#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 4
#SBATCH --mem 8000
#SBATCH -t 0-72:00:00
#SBATCH -o mergecoverage.%N.%j.out
#SBATCH -e mergecoverage.%N.%j.err

module load samtools/1.10-fasrc01

cd stiNae/
samtools merge stiNae_female.sort.bam stiNae_female_L001_001.sort.bam stiNae_female_L004_001.sort.bam
samtools coverage stiNae_female.sort.bam > stiNae_female.sort.coverage.out

cd ../oxyJam/
samtools merge oxyJam_female.sort.bam oxyJam_female_L001_001.sort.bam oxyJam_female_L004_001.sort.bam
samtools coverage oxyJam_female.sort.bam > oxyJam_female.sort.coverage.out

cd ../netAur/
samtools merge -f netAur_female.sort.bam netAur_female_L001_001.sort.bam netAur_female_L004_001.sort.bam
samtools coverage netAur_female.sort.bam > netAur_female.sort.coverage.out


