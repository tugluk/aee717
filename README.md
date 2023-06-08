# Aee717 Project

- Download my slurm script to run on TRUBA
- Upload this script to TRUBA login nodes
- Replace my username (otugluk) with your username in the script
- Likewise change the run directory (/truba/home/...) with your own home directory
- Go to https://github.com/lammps/lammps/tree/develop/examples/flow
- Download the two script files in.flow.couette and in.flow.pois
- Uncomment the "image dump" lines so that the LAMMPS creates image files on the fly
- Go to https://github.com/lammps/lammps/tree/develop/examples/flow and download the two scripts in.flow.couette and in.flow.pois
- Comment out/edit relevant regions in these two scripts, so that images are written out every 200 time steps
- Run these two scripts using slurm (and my slurm script), changing the time steps to 50000
- Plot temperature, pairwise energy and  total energy versus time
- Comment on the profiling info (MPI task timing breakdown in the output), does anything surprise you?
- Increase the number of atoms and run the simulation again (for these cases you need to change the box size!). Try various sizes (~100, ~10k, ~100k), and comment on how timing breakdown changes. How does the computation scale?
- Play with LJ cut-off and neighbour update delays (couple of parameters at your largest domain), and look at timing breakdowns. Summarize the effects.
