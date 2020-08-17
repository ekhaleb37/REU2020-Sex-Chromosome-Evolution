#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 4
#SBATCH --mem 8000
#SBATCH -t 0-24:00:00
#SBATCH -o coverage.%N.%j.out
#SBATCH -e coverage.%N.%j.err

module load samtools/1.10-fasrc01

samtools coverage oxyJam_male.sort.bam > oxyJam_male.sort.coverage.out

samtools coverage oxyJam_female_L004_001.sort.bam > oxyJam_female_L004_001.sort.coverage.out

samtools coverage oxyJam_female_L001_001.sort.bam > oxyJam_female_L001_001.sort.coverage.out


