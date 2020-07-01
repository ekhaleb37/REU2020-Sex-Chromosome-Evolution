#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 4000
#SBATCH -t 0-04:00:00
#SBATCH -o stiNae_bwamem.%N.%j.out
#SBATCH -e stiNae_bwamem.%N.%j.err

module load bwa/0.7.17-fasrc01

R1=$1
name=`echo $R1 | sed 's/_1.fastq.gz\+//'`
R2=${name}_2.fastq.gz
#run mapping
bwa mem -t 8 -R '@RG\tID:${name}\tSM:${name}' stiNae_index $R1 $R2 > $name.sam