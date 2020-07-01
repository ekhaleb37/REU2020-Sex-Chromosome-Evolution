for R1 in fastqs/stiNae/*1.fastq.gz;
do
sbatch map_samples.sh $R1 $R2
sleep(1)
done
