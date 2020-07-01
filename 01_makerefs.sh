#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 4000
#SBATCH -t 0-04:00:00
#SBATCH -o makerefs.%N.%j.out
#SBATCH -e makerefs.%N.%j.err

module load bwa/0.7.17-fasrc01

bwa index -p netAur_index ../swuitchik/summer2020REU/duck_data/netAur/refGenome/GCA_011076525.1_BPBGC_Naur_1.0_genomic.fna.gz
bwa index -p oxyJam_index ../swuitchik/summer2020REU/duck_data/oxyJam/refGenome/GCA_011077185.1_BPBGC_Ojam_1.0_genomic.fna.gz
bwa index -p stiNae_index ../swuitchik/summer2020REU/duck_data/stiNae/refGenome/GCA_011074415.1_BPBGC_Snae_1.0_genomic.fna.gz
