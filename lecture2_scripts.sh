ssh user@novus.dri.oregonstate.edu
osu-overview
osu-cluster-list
osu-cluster-list |grep GPU


ssh user@submit.hpc.engr.oregonstate.edu

# usage/resources of the queue
nodestat dgx2

# submit an interactive jobs
srun -p dgx2 --gres=gpu:1 --pty zsh
nvidia-smi

module load python
python --version

module list

##Currently Loaded Modules:
##  1) slurm/current   2) python/3.13

module avail

squeue -u user
scancel {jobid}
