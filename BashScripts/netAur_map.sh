#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --mem 8000
#SBATCH -t 0-24:00:00
#SBATCH -o netAur_bwamem.%N.%j.out
#SBATCH -e netAur_bwamem.%N.%j.err

module load bwa/0.7.17-fasrc01

R1=$1
name=`echo $R1 | sed 's/_R1.fastq.gz\+//'`
R2=${name}_R2.fastq.gz
#run mapping
bwa mem -t 8 -R '@RG\tID:${name}\tSM:${name}' netAur_index $R1 $R2 > $name.sam
