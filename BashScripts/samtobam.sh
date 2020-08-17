#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 4000
#SBATCH -t 0-24:00:00
#SBATCH -o samtobam_bwamem.%N.%j.out
#SBATCH -e samtobam_bwamem.%N.%j.err

module load samtools/1.10-fasrc01 
SP=$1
name=`echo $SP | sed 's/.sam\+//'`
samtools view -b -h -o $name.bam $name.sam
samtools sort -o $name.sort.bam $name.bam
samtools index $name.sort.bam
samtools quickcheck $name.sort.bam
