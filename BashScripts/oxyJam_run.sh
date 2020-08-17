for R1 in fastqs/oxyJam/*1.fastq.gz;
do
sbatch oxyJam_map.sh $R1 $R2
sleep 1
done
