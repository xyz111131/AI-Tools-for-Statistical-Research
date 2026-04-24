#!/bin/bash
#SBATCH -J helloWorld		# name of job
#SBATCH -p share			# name of partition or queue
#SBATCH -o helloWorld.out		# name of output file for this submission script
#SBATCH -e helloWorld.err		# name of error file for this submission script
#SBATCH -t 24:30:00              # time limit on job: 24 hours, 30 minutes (default 12 hours)
#SBATCH --gres=gpu:1 		# number of GPUs to request per node (default 0)
#SBATCH --cpus-per-task=8        # number of cores/threads per task (default 1)
#SBATCH --mem=20G          # request 20 gigabytes memory per node


# load any software environment module required for app (e.g. python, R, gcc, cuda)
module load software/version

# run my job (e.g. R, python)
mySoftwareExecutable
