for R1 in fastqs/netAur/*1.fastq.gz;
do
sbatch netAur_map.sh $R1 $R2
sleep 1
done
