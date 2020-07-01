#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 30
#SBATCH -o slurm.%N.%j.out
#SBATCH -e slurm.%N.%j.err

# submit this script from your home directory by typing sbatch helloworld.sh

#wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/008/822/105/GCF_008822105.2_bTaeGut2.pat.W.v2/GCF_008822105.2_bTaeGut2.pat.W.v2_genomic.fna.gz
#bwa index -p taeGut GCF_008822105.2_bTaeGut2.pat.W.v2_genomic.fna.gz
#bwa mem -t 1 taeGut ERR1013161_1.fastq.gz ERR1013161_2.fastq.gz > ERR1013161.sam
module load bwa/0.7.17-fasrc01

bwa index -p netAur_index ../swuitchik/summer2020REU/duck_data/netAur/refGenome/GCA_011076525.1_BPBGC_Naur_1.0_genomic.fna.gz
bwa mem -t 8 netAur_index ../swuitchik/summer2020REU/duck_data/netAur/DGAB-CNB0003-CN3-lib1_S3_L004_R1_001.fastq.gz ../swuitchik/summer2020REU/duck_data/netAur/DGAB-CNB0003-CN3-lib1_S3_L004_R2_001.fastq.gz > DGAB-CNB0003-CN3-lib1_S3_L004.sam
bwa mem -t 8 netAur_index ../swuitchik/summer2020REU/duck_data/netAur/DGAB-CNB0003-CN3-lib1_S4_L001_R1_001.fastq.gz ../swuitchik/summer2020REU/duck_data/netAur/DGAB-CNB0003-CN3-lib1_S4_L001_R2_001.fastq.gz > DGAB-CNB0003-CN3-lib1_S4_L001.sam
bwa mem -t 8 netAur_index ../swuitchik/summer2020REU/duck_data/netAur/DP8400009485BR_L01_SP2003170310_1.fastq.gz ../swuitchik/summer2020REU/duck_data/netAur/DP8400009485BR_L01_SP2003170310_2.fastq.gz > DP8400009485BR_L01_SP2003170310.sam

bwa index -p oxyJam_index ../swuitchik/summer2020REU/duck_data/oxyJam/refGenome/GCA_011077185.1_BPBGC_Ojam_1.0_genomic.fna.gz
bwa mem -t 8 oxyJam_index ../swuitchik/summer2020REU/duck_data/oxyJam/DGAB-CNB0002-CN2-lib1_S6_L001_R1_001.fastq.gz ../swuitchik/summer2020REU/duck_data/oxyJam/DGAB-CNB0002-CN2-lib1_S6_L001_R2_001.fastq.gz > DGAB-CNB0002-CN2-lib1_S6_L001.sam
bwa mem -t 8 oxyJam_index ../swuitchik/summer2020REU/duck_data/oxyJam/DGAB-CNB0002-CN2-lib1_S6_L004_R1_001.fastq.gz ../swuitchik/summer2020REU/duck_data/oxyJam/DGAB-CNB0002-CN2-lib1_S6_L004_R2_001.fastq.gz > DGAB-CNB0002-CN2-lib1_S6_L004.sam
bwa mem -t 8 oxyJam_index ../swuitchik/summer2020REU/duck_data/oxyJam/DP8400009485BR_L01_SP2003170311_1.fastq.gz ../swuitchik/summer2020REU/duck_data/oxyJam/DP8400009485BR_L01_SP2003170311_2.fastq.gz > DP8400009485BR_L01_SP2003170311.sam

bwa index -p stiNae_index ../swuitchik/summer2020REU/duck_data/stiNae/refGenome/GCA_011074415.1_BPBGC_Snae_1.0_genomic.fna.gz
bwa mem -t 8 stiNae_index ../swuitchik/summer2020REU/duck_data/stiNae/DGAB-CNB0001-QM1-lib1_S4_L004_R1_001.fastq.gz ../swuitchik/summer2020REU/duck_data/stiNae/DGAB-CNB0001-QM1-lib1_S4_L004_R2_001.fastq.gz > DGAB-CNB0001-QM1-lib1_S4_L004.sam
bwa mem -t 8 stiNae_index ../swuitchik/summer2020REU/duck_data/stiNae/DGAB-CNB0001-QM1-lib1_S5_L001_R1_001.fastq.gz ../swuitchik/summer2020REU/duck_data/stiNae/DGAB-CNB0001-QM1-lib1_S5_L001_R2_001.fastq.gz > DGAB-CNB0001-QM1-lib1_S5_L001.sam
bwa mem -t 8 stiNae_index ../swuitchik/summer2020REU/duck_data/stiNae/DP8400009343BR_L01_SP2003170309_1.fastq.gz ../swuitchik/summer2020REU/duck_data/stiNae/DP8400009343BR_L01_SP2003170309_2.fastq.gz > DP8400009343BR_L01_SP2003170309.sam



