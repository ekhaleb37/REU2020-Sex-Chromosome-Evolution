for SP in *.sam;
do 
sbatch samtobam.sh $SP
sleep 1
done
