#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 3000
#SBATCH -t 30
#SBATCH -o slurm.%N.%j.out
#SBATCH -e slurm.%N.%j.err

# submit this script from your home directory by typing sbatch helloworld.sh

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/008/822/105/GCF_008822105.2_bTaeGut2.pat.W.v2/GCF_008822105.2_bTaeGut2.pat.W.v2_genomic.fna.gz
bwa index -p taeGut GCF_008822105.2_bTaeGut2.pat.W.v2_genomic.fna.gz
bwa mem -t 1 taeGut ERR1013161_1.fastq.gz ERR1013161_2.fastq.gz > ERR1013161.sam



