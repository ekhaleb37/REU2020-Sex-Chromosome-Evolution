for R1 in fastqs/stiNae/*1.fastq.gz;
do
sbatch stiNae_map.sh $R1 $R2
sleep 1
done
