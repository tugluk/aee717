#!/bin/bash
#SBATCH -p hamsi
#SBATCH -A otugluk
#SBATCH -J lampps_simple
#SBATCH -N  1
#SBATCH -n 28
#SBATCH --time=10:10:00 

module load centos7.9/lib/openmpi/4.1.1-gcc-7
module load centos7.9/lib/fftw/3.3.7-openmpi-4.1.1-gcc-7-GOLD
module load centos7.3/app/lammps/23Jun2022-openmpi-4.1.1-oneapi-2021.2-GOLD 

echo "SLURM_NODELIST $SLURM_NODELIST"
echo "NUMBER OF CORES $SLURM_NTASKS"




cd /truba/home/otugluk/lampps




export OMP_NUM_THREADS=1


mpirun  $LAMMPS_DIR/bin/lmp  < in.flow.pois > lammps-outputfile.out

exit
