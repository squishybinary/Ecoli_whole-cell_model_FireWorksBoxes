#!/bin/bash 
# Title: FireWorksBox_3
# Author: Joshua Rees, joshua.rees@bristol.ac.uk
# Affiliation: Genome Design Group, Life Sciences, University of Bristol
# Run Using: BlueCrystal Supercomputer and the PBS Queue System
# Last Updated: 2020-01-08

# Experiment - Testing qadapter settings, and WildType analysis of single and multi-generation simulations
# See https://github.com/CovertLab/WholeCellEcoliRelease/tree/master/runscripts/paper for other options
# UPDATE - using scripts from https://github.com/CovertLab/WholeCellEcoliRelease/tree/master/runscripts/jenkins

## To Run
# chmod u+x FireWorksBox_3.sh
# ./FireWorksBox_3.sh

## Initialise the Database (is this really the only way to do this?)
cd /newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks
lpad -l my_launchpad.yaml reset

## Pre Simulation Requirements
cd /newhome/jr0904/wholecell2/wcEcoli
# load required modules
module add tools/git-2.22.0
module add languages/gcc-7.1.0
# Set the $PYTHONPATH:
# export PYTHONPATH="$PWD:$PYTHONPATH"
# Compile the Cython code
make clean compile

## Create and Add FireWorks to the Launchpad
cd /newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks

DESC="WildTypeBackground_5gen200seed" \
VARIANT="wildtype" FIRST_VARIANT_INDEX=0 LAST_VARIANT_INDEX=0 \
SINGLE_DAUGHTERS=1 N_GENS=5 N_INIT_SIMS=200 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

## Launch Rockets to collect the FireWorks (created by fw_queue.py) from the Launchpad (MongoDB hosted on MLab via Heroku) and run them on the Queue (BlueCrystal)
qlaunch -r -l my_launchpad.yaml -w my_fworker.yaml -q my_qadapter.yaml rapidfire --nlaunches infinite --sleep 30 --maxjobs_queue 100 

