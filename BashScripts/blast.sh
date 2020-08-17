#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --mem 8000
#SBATCH -t 0-24:00:00
#SBATCH -o blast.%N.%j.out
#SBATCH -e blast.%N.%j.err




module load samtools/1.10-fasrc01
module load blast/2.6.0+-fasrc01

makeblastdb -in chicken.fa -dbtype nucl

samtools faidx oxyJam.refGenome.fa -r OJ_W.scaffolds.txt -o OJ_Wscaffolds.fa
samtools faidx stiNae.refGenome.fa -r SN_W.scaffolds.txt -o SN_Wscaffolds.fa
samtools faidx netAur.refGenome.fa -r NA_W.scaffolds.txt -o NA_Wscaffolds.fa

blastn -query OJ_Wscaffolds.fa -db chicken.fa -out OJ_Wscaffolds.blasted.txt
blastn -query SN_Wscaffolds.fa -db chicken.fa -out SN_Wscaffolds.blasted.txt
blastn -query NA_Wscaffolds.fa -db chicken.fa -out NA_Wscaffolds.blasted.txt
