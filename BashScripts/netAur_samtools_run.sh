for SP in fastqs/netAur/*.sam;
do 
sbatch samtobam.sh $SP
sleep 1
done
