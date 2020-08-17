for SP in fastqs/oxyJam/*.sam;
do 
sbatch samtobam.sh $SP
sleep 1
done
