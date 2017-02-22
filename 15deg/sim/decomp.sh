#!/bin/bash

#
# Job submission scripts for the SGE batch submission system.
#
# - options to the SGE queuing system are added to the submission 
#   script using lines beginning with #$
#
# find more information concerning these options in qsub(1)
#


# The appropriate MPI module must be loaded. For example:
#module load compilers/gcc/4.4.2
#module load mpi/openmpi/1.3.4_gcc
#module load mpi/openmpi/1.3.4_intel


# The name of the job.
#$ -N Decomp


# Specifies  the  project (RAPI number from CCDB) to  which this job is assigned.
# 
#$ -P  xup-110-aa


# Parallel programming environment (PE) to instantiate and the numbers of cores.
##$ -pe mpi 16         # 4 slots (allocated among the available hosts)
##$ -pe host 16       # 8 slots per host. (numbers of slots should be a multiple of 8)
#$ -pe smp 1         # 6 slots (allocated on a single host (max=8) for multi-threaded job)


# Serial Array jobs (format = min-max:step)
# Ex: 2-10:2 = jobs # 2,4,6,8,10
##$ -t 1-5:1


# All jobs must be submitted with an estimated run time. (in seconds)
#$ -l h_rt=1:00:00


# The path used for the standard output stream of the job.
##$ -o $HOME/job.out
   

# The path used for the standard error stream of the job.
##$ -e $HOME/job.err


# The interpreting shell for the job.
#$ -S /bin/bash


# Execute the job from the current working directory.
#$ -cwd


# Send "warning" signals to a running job prior to sending the signals themselves. 
# (If a SIGKILL is pending, the job will receive a SIGUSR2 several seconds before the SIGKILL.)
#$ -notify


# List of users to which the server that executes the job has to send mail
##$ -M user@domain.com


# Under which circumstances mail is to be sent?
# "b" = when job begins
# "e" = when job ends
# "a" = when job aborts
# "s" = when job suspended (someone kicks you off)
# "n" = don't send mail
##$ -m bea


# Set the number of OpenMP threads to share the work.
# (set to the number of slots specified in the -pe smp argument)
#export OMP_NUM_THREADS=$NSLOTS


# Command to run
#/clumeq/example/hello-openmp
#mpirun /clumeq/example/hello-mpi
. $HOME/.bashrc
decomposePar
#mpirun simpleFoam -parallel
#snappyHexMesh
#checkMesh -time 2
