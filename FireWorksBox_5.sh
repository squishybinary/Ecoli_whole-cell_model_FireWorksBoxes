#!/bin/bash 
# Title: FireWorksBox_5
# Author: Joshua Rees, joshua.rees@bristol.ac.uk
# Affiliation: Genome Design Group, Life Sciences, University of Bristol
# Run Using: BlueCrystal Supercomputer and the PBS Queue System
# Last Updated: 2019-12-19

# Experiment - Testing qadapter settings, and WildType analysis of single and multi-generation simulations
# See https://github.com/CovertLab/WholeCellEcoliRelease/tree/master/runscripts/paper for other options
# UPDATE - using scripts from https://github.com/CovertLab/WholeCellEcoliRelease/tree/master/runscripts/jenkins

## To Run
# chmod u+x FireWorksBox_5.sh
# ./FireWorksBox_5.sh

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

DESC="KO Name EG10582 KO Index 592" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=592 LAST_VARIANT_INDEX=592 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10583 KO Index 593" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=593 LAST_VARIANT_INDEX=593 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10584 KO Index 594" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=594 LAST_VARIANT_INDEX=594 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10585 KO Index 595" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=595 LAST_VARIANT_INDEX=595 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10586 KO Index 596" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=596 LAST_VARIANT_INDEX=596 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10587 KO Index 597" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=597 LAST_VARIANT_INDEX=597 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10588 KO Index 598" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=598 LAST_VARIANT_INDEX=598 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10589 KO Index 599" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=599 LAST_VARIANT_INDEX=599 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10590 KO Index 600" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=600 LAST_VARIANT_INDEX=600 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10595 KO Index 605" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=605 LAST_VARIANT_INDEX=605 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10604 KO Index 614" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=614 LAST_VARIANT_INDEX=614 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10613 KO Index 623" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=623 LAST_VARIANT_INDEX=623 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10614 KO Index 624" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=624 LAST_VARIANT_INDEX=624 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10616 KO Index 626" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=626 LAST_VARIANT_INDEX=626 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10617 KO Index 627" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=627 LAST_VARIANT_INDEX=627 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10619 KO Index 629" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=629 LAST_VARIANT_INDEX=629 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10620 KO Index 630" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=630 LAST_VARIANT_INDEX=630 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10621 KO Index 631" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=631 LAST_VARIANT_INDEX=631 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10622 KO Index 632" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=632 LAST_VARIANT_INDEX=632 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10623 KO Index 633" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=633 LAST_VARIANT_INDEX=633 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10628 KO Index 638" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=638 LAST_VARIANT_INDEX=638 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10629 KO Index 639" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=639 LAST_VARIANT_INDEX=639 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10630 KO Index 640" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=640 LAST_VARIANT_INDEX=640 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10631 KO Index 641" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=641 LAST_VARIANT_INDEX=641 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10632 KO Index 642" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=642 LAST_VARIANT_INDEX=642 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10634 KO Index 644" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=644 LAST_VARIANT_INDEX=644 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10637 KO Index 647" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=647 LAST_VARIANT_INDEX=647 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10642 KO Index 652" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=652 LAST_VARIANT_INDEX=652 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10643 KO Index 653" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=653 LAST_VARIANT_INDEX=653 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10649 KO Index 659" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=659 LAST_VARIANT_INDEX=659 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10650 KO Index 660" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=660 LAST_VARIANT_INDEX=660 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10652 KO Index 662" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=662 LAST_VARIANT_INDEX=662 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10653 KO Index 663" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=663 LAST_VARIANT_INDEX=663 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10654 KO Index 664" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=664 LAST_VARIANT_INDEX=664 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10655 KO Index 665" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=665 LAST_VARIANT_INDEX=665 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10660 KO Index 670" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=670 LAST_VARIANT_INDEX=670 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10661 KO Index 671" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=671 LAST_VARIANT_INDEX=671 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10663 KO Index 673" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=673 LAST_VARIANT_INDEX=673 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10664 KO Index 674" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=674 LAST_VARIANT_INDEX=674 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10670 KO Index 680" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=680 LAST_VARIANT_INDEX=680 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10671 KO Index 681" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=681 LAST_VARIANT_INDEX=681 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10674 KO Index 684" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=684 LAST_VARIANT_INDEX=684 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10675 KO Index 685" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=685 LAST_VARIANT_INDEX=685 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10676 KO Index 686" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=686 LAST_VARIANT_INDEX=686 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10677 KO Index 687" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=687 LAST_VARIANT_INDEX=687 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10678 KO Index 688" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=688 LAST_VARIANT_INDEX=688 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10682 KO Index 692" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=692 LAST_VARIANT_INDEX=692 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10683 KO Index 693" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=693 LAST_VARIANT_INDEX=693 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10688 KO Index 698" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=698 LAST_VARIANT_INDEX=698 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10691 KO Index 701" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=701 LAST_VARIANT_INDEX=701 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10693 KO Index 702" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=702 LAST_VARIANT_INDEX=702 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10694 KO Index 703" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=703 LAST_VARIANT_INDEX=703 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10695 KO Index 704" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=704 LAST_VARIANT_INDEX=704 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10696 KO Index 705" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=705 LAST_VARIANT_INDEX=705 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10699 KO Index 708" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=708 LAST_VARIANT_INDEX=708 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10700 KO Index 709" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=709 LAST_VARIANT_INDEX=709 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10702 KO Index 711" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=711 LAST_VARIANT_INDEX=711 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10703 KO Index 712" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=712 LAST_VARIANT_INDEX=712 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10704 KO Index 713" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=713 LAST_VARIANT_INDEX=713 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10705 KO Index 714" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=714 LAST_VARIANT_INDEX=714 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10706 KO Index 715" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=715 LAST_VARIANT_INDEX=715 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10707 KO Index 716" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=716 LAST_VARIANT_INDEX=716 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10708 KO Index 717" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=717 LAST_VARIANT_INDEX=717 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10709 KO Index 718" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=718 LAST_VARIANT_INDEX=718 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10710 KO Index 719" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=719 LAST_VARIANT_INDEX=719 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10713 KO Index 722" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=722 LAST_VARIANT_INDEX=722 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10714 KO Index 723" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=723 LAST_VARIANT_INDEX=723 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10723 KO Index 732" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=732 LAST_VARIANT_INDEX=732 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10724 KO Index 733" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=733 LAST_VARIANT_INDEX=733 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10727 KO Index 735" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=735 LAST_VARIANT_INDEX=735 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10729 KO Index 737" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=737 LAST_VARIANT_INDEX=737 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10734 KO Index 742" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=742 LAST_VARIANT_INDEX=742 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10739 KO Index 747" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=747 LAST_VARIANT_INDEX=747 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10740 KO Index 748" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=748 LAST_VARIANT_INDEX=748 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10742 KO Index 750" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=750 LAST_VARIANT_INDEX=750 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10743 KO Index 751" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=751 LAST_VARIANT_INDEX=751 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10744 KO Index 752" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=752 LAST_VARIANT_INDEX=752 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10745 KO Index 753" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=753 LAST_VARIANT_INDEX=753 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10746 KO Index 754" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=754 LAST_VARIANT_INDEX=754 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10749 KO Index 757" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=757 LAST_VARIANT_INDEX=757 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10750 KO Index 758" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=758 LAST_VARIANT_INDEX=758 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10751 KO Index 759" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=759 LAST_VARIANT_INDEX=759 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10752 KO Index 760" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=760 LAST_VARIANT_INDEX=760 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10753 KO Index 761" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=761 LAST_VARIANT_INDEX=761 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10754 KO Index 762" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=762 LAST_VARIANT_INDEX=762 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10755 KO Index 763" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=763 LAST_VARIANT_INDEX=763 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10756 KO Index 764" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=764 LAST_VARIANT_INDEX=764 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10757 KO Index 765" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=765 LAST_VARIANT_INDEX=765 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10758 KO Index 766" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=766 LAST_VARIANT_INDEX=766 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10759 KO Index 767" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=767 LAST_VARIANT_INDEX=767 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10767 KO Index 775" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=775 LAST_VARIANT_INDEX=775 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10768 KO Index 776" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=776 LAST_VARIANT_INDEX=776 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10769 KO Index 777" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=777 LAST_VARIANT_INDEX=777 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10770 KO Index 778" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=778 LAST_VARIANT_INDEX=778 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10771 KO Index 779" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=779 LAST_VARIANT_INDEX=779 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10772 KO Index 780" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=780 LAST_VARIANT_INDEX=780 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10773 KO Index 781" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=781 LAST_VARIANT_INDEX=781 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10774 KO Index 782" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=782 LAST_VARIANT_INDEX=782 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10781 KO Index 789" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=789 LAST_VARIANT_INDEX=789 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10782 KO Index 790" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=790 LAST_VARIANT_INDEX=790 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10783 KO Index 791" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=791 LAST_VARIANT_INDEX=791 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10784 KO Index 792" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=792 LAST_VARIANT_INDEX=792 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10787 KO Index 795" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=795 LAST_VARIANT_INDEX=795 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10790 KO Index 798" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=798 LAST_VARIANT_INDEX=798 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10791 KO Index 799" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=799 LAST_VARIANT_INDEX=799 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10792 KO Index 800" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=800 LAST_VARIANT_INDEX=800 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10793 KO Index 801" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=801 LAST_VARIANT_INDEX=801 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10794 KO Index 802" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=802 LAST_VARIANT_INDEX=802 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10795 KO Index 803" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=803 LAST_VARIANT_INDEX=803 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10796 KO Index 804" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=804 LAST_VARIANT_INDEX=804 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10797 KO Index 805" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=805 LAST_VARIANT_INDEX=805 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10798 KO Index 806" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=806 LAST_VARIANT_INDEX=806 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10799 KO Index 807" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=807 LAST_VARIANT_INDEX=807 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10801 KO Index 809" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=809 LAST_VARIANT_INDEX=809 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10802 KO Index 810" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=810 LAST_VARIANT_INDEX=810 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10803 KO Index 811" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=811 LAST_VARIANT_INDEX=811 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10804 KO Index 812" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=812 LAST_VARIANT_INDEX=812 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10805 KO Index 813" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=813 LAST_VARIANT_INDEX=813 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10806 KO Index 814" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=814 LAST_VARIANT_INDEX=814 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10807 KO Index 815" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=815 LAST_VARIANT_INDEX=815 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10808 KO Index 816" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=816 LAST_VARIANT_INDEX=816 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10809 KO Index 817" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=817 LAST_VARIANT_INDEX=817 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10810 KO Index 818" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=818 LAST_VARIANT_INDEX=818 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10811 KO Index 819" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=819 LAST_VARIANT_INDEX=819 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10817 KO Index 825" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=825 LAST_VARIANT_INDEX=825 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10821 KO Index 829" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=829 LAST_VARIANT_INDEX=829 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10835 KO Index 843" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=843 LAST_VARIANT_INDEX=843 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10838 KO Index 846" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=846 LAST_VARIANT_INDEX=846 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10844 KO Index 852" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=852 LAST_VARIANT_INDEX=852 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10855 KO Index 863" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=863 LAST_VARIANT_INDEX=863 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10856 KO Index 864" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=864 LAST_VARIANT_INDEX=864 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10857 KO Index 865" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=865 LAST_VARIANT_INDEX=865 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10858 KO Index 866" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=866 LAST_VARIANT_INDEX=866 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10859 KO Index 867" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=867 LAST_VARIANT_INDEX=867 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10860 KO Index 868" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=868 LAST_VARIANT_INDEX=868 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10861 KO Index 869" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=869 LAST_VARIANT_INDEX=869 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10862 KO Index 870" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=870 LAST_VARIANT_INDEX=870 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10863 KO Index 871" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=871 LAST_VARIANT_INDEX=871 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10864 KO Index 872" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=872 LAST_VARIANT_INDEX=872 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10865 KO Index 873" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=873 LAST_VARIANT_INDEX=873 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10866 KO Index 874" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=874 LAST_VARIANT_INDEX=874 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10867 KO Index 875" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=875 LAST_VARIANT_INDEX=875 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10868 KO Index 876" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=876 LAST_VARIANT_INDEX=876 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10869 KO Index 877" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=877 LAST_VARIANT_INDEX=877 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10870 KO Index 878" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=878 LAST_VARIANT_INDEX=878 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10871 KO Index 879" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=879 LAST_VARIANT_INDEX=879 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10872 KO Index 880" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=880 LAST_VARIANT_INDEX=880 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10873 KO Index 881" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=881 LAST_VARIANT_INDEX=881 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10874 KO Index 882" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=882 LAST_VARIANT_INDEX=882 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10875 KO Index 883" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=883 LAST_VARIANT_INDEX=883 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10876 KO Index 884" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=884 LAST_VARIANT_INDEX=884 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10877 KO Index 885" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=885 LAST_VARIANT_INDEX=885 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10878 KO Index 886" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=886 LAST_VARIANT_INDEX=886 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10879 KO Index 887" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=887 LAST_VARIANT_INDEX=887 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10880 KO Index 888" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=888 LAST_VARIANT_INDEX=888 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10881 KO Index 889" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=889 LAST_VARIANT_INDEX=889 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10882 KO Index 890" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=890 LAST_VARIANT_INDEX=890 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10883 KO Index 891" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=891 LAST_VARIANT_INDEX=891 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10884 KO Index 892" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=892 LAST_VARIANT_INDEX=892 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10885 KO Index 893" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=893 LAST_VARIANT_INDEX=893 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10886 KO Index 894" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=894 LAST_VARIANT_INDEX=894 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10887 KO Index 895" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=895 LAST_VARIANT_INDEX=895 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10888 KO Index 896" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=896 LAST_VARIANT_INDEX=896 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10889 KO Index 897" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=897 LAST_VARIANT_INDEX=897 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10890 KO Index 898" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=898 LAST_VARIANT_INDEX=898 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10891 KO Index 899" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=899 LAST_VARIANT_INDEX=899 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10892 KO Index 900" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=900 LAST_VARIANT_INDEX=900 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10893 KO Index 901" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=901 LAST_VARIANT_INDEX=901 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10894 KO Index 902" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=902 LAST_VARIANT_INDEX=902 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10895 KO Index 903" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=903 LAST_VARIANT_INDEX=903 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10900 KO Index 908" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=908 LAST_VARIANT_INDEX=908 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10901 KO Index 909" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=909 LAST_VARIANT_INDEX=909 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10902 KO Index 910" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=910 LAST_VARIANT_INDEX=910 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10903 KO Index 911" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=911 LAST_VARIANT_INDEX=911 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10904 KO Index 912" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=912 LAST_VARIANT_INDEX=912 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10905 KO Index 913" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=913 LAST_VARIANT_INDEX=913 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10906 KO Index 914" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=914 LAST_VARIANT_INDEX=914 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10907 KO Index 915" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=915 LAST_VARIANT_INDEX=915 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10908 KO Index 916" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=916 LAST_VARIANT_INDEX=916 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10909 KO Index 917" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=917 LAST_VARIANT_INDEX=917 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10910 KO Index 918" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=918 LAST_VARIANT_INDEX=918 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10911 KO Index 919" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=919 LAST_VARIANT_INDEX=919 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10912 KO Index 920" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=920 LAST_VARIANT_INDEX=920 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10913 KO Index 921" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=921 LAST_VARIANT_INDEX=921 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10914 KO Index 922" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=922 LAST_VARIANT_INDEX=922 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10915 KO Index 923" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=923 LAST_VARIANT_INDEX=923 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10916 KO Index 924" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=924 LAST_VARIANT_INDEX=924 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10917 KO Index 925" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=925 LAST_VARIANT_INDEX=925 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10918 KO Index 926" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=926 LAST_VARIANT_INDEX=926 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10919 KO Index 927" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=927 LAST_VARIANT_INDEX=927 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10920 KO Index 928" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=928 LAST_VARIANT_INDEX=928 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10922 KO Index 930" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=930 LAST_VARIANT_INDEX=930 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10928 KO Index 934" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=934 LAST_VARIANT_INDEX=934 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10929 KO Index 935" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=935 LAST_VARIANT_INDEX=935 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10930 KO Index 936" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=936 LAST_VARIANT_INDEX=936 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10931 KO Index 937" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=937 LAST_VARIANT_INDEX=937 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10932 KO Index 938" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=938 LAST_VARIANT_INDEX=938 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10933 KO Index 939" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=939 LAST_VARIANT_INDEX=939 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10934 KO Index 940" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=940 LAST_VARIANT_INDEX=940 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10944 KO Index 950" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=950 LAST_VARIANT_INDEX=950 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10945 KO Index 951" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=951 LAST_VARIANT_INDEX=951 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10946 KO Index 952" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=952 LAST_VARIANT_INDEX=952 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10947 KO Index 953" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=953 LAST_VARIANT_INDEX=953 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10948 KO Index 954" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=954 LAST_VARIANT_INDEX=954 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10950 KO Index 956" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=956 LAST_VARIANT_INDEX=956 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10960 KO Index 966" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=966 LAST_VARIANT_INDEX=966 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10961 KO Index 967" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=967 LAST_VARIANT_INDEX=967 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10963 KO Index 969" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=969 LAST_VARIANT_INDEX=969 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10964 KO Index 970" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=970 LAST_VARIANT_INDEX=970 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10965 KO Index 971" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=971 LAST_VARIANT_INDEX=971 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10966 KO Index 972" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=972 LAST_VARIANT_INDEX=972 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10971 KO Index 977" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=977 LAST_VARIANT_INDEX=977 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10973 KO Index 979" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=979 LAST_VARIANT_INDEX=979 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10979 KO Index 985" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=985 LAST_VARIANT_INDEX=985 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10980 KO Index 986" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=986 LAST_VARIANT_INDEX=986 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10981 KO Index 987" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=987 LAST_VARIANT_INDEX=987 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10982 KO Index 988" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=988 LAST_VARIANT_INDEX=988 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10985 KO Index 991" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=991 LAST_VARIANT_INDEX=991 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10990 KO Index 996" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=996 LAST_VARIANT_INDEX=996 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10991 KO Index 997" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=997 LAST_VARIANT_INDEX=997 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10993 KO Index 999" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=999 LAST_VARIANT_INDEX=999 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10994 KO Index 1000" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1000 LAST_VARIANT_INDEX=1000 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10998 KO Index 1004" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1004 LAST_VARIANT_INDEX=1004 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10999 KO Index 1005" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1005 LAST_VARIANT_INDEX=1005 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11000 KO Index 1006" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1006 LAST_VARIANT_INDEX=1006 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11001 KO Index 1007" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1007 LAST_VARIANT_INDEX=1007 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11002 KO Index 1008" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1008 LAST_VARIANT_INDEX=1008 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11003 KO Index 1009" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1009 LAST_VARIANT_INDEX=1009 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11005 KO Index 1011" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1011 LAST_VARIANT_INDEX=1011 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11006 KO Index 1012" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1012 LAST_VARIANT_INDEX=1012 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11008 KO Index 1014" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1014 LAST_VARIANT_INDEX=1014 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11009 KO Index 1015" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1015 LAST_VARIANT_INDEX=1015 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11015 KO Index 1021" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1021 LAST_VARIANT_INDEX=1021 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11020 KO Index 1026" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1026 LAST_VARIANT_INDEX=1026 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11021 KO Index 1027" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1027 LAST_VARIANT_INDEX=1027 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11023 KO Index 1029" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1029 LAST_VARIANT_INDEX=1029 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11024 KO Index 1030" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1030 LAST_VARIANT_INDEX=1030 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11025 KO Index 1031" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1031 LAST_VARIANT_INDEX=1031 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11026 KO Index 1032" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1032 LAST_VARIANT_INDEX=1032 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11027 KO Index 1033" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1033 LAST_VARIANT_INDEX=1033 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11028 KO Index 1034" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1034 LAST_VARIANT_INDEX=1034 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11029 KO Index 1035" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1035 LAST_VARIANT_INDEX=1035 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11030 KO Index 1036" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1036 LAST_VARIANT_INDEX=1036 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11032 KO Index 1038" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1038 LAST_VARIANT_INDEX=1038 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11035 KO Index 1041" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1041 LAST_VARIANT_INDEX=1041 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11039 KO Index 1045" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1045 LAST_VARIANT_INDEX=1045 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11040 KO Index 1046" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1046 LAST_VARIANT_INDEX=1046 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11041 KO Index 1047" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1047 LAST_VARIANT_INDEX=1047 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11042 KO Index 1048" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1048 LAST_VARIANT_INDEX=1048 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11043 KO Index 1049" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1049 LAST_VARIANT_INDEX=1049 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11045 KO Index 1051" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1051 LAST_VARIANT_INDEX=1051 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11046 KO Index 1052" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1052 LAST_VARIANT_INDEX=1052 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11047 KO Index 1053" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1053 LAST_VARIANT_INDEX=1053 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11048 KO Index 1054" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1054 LAST_VARIANT_INDEX=1054 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11049 KO Index 1055" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1055 LAST_VARIANT_INDEX=1055 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11050 KO Index 1056" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1056 LAST_VARIANT_INDEX=1056 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11060 KO Index 1066" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1066 LAST_VARIANT_INDEX=1066 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11065 KO Index 1071" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1071 LAST_VARIANT_INDEX=1071 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11066 KO Index 1072" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1072 LAST_VARIANT_INDEX=1072 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11067 KO Index 1073" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1073 LAST_VARIANT_INDEX=1073 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11074 KO Index 1080" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1080 LAST_VARIANT_INDEX=1080 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11075 KO Index 1081" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1081 LAST_VARIANT_INDEX=1081 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11076 KO Index 1082" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1082 LAST_VARIANT_INDEX=1082 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11079 KO Index 1084" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1084 LAST_VARIANT_INDEX=1084 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11080 KO Index 1085" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1085 LAST_VARIANT_INDEX=1085 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11081 KO Index 1086" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1086 LAST_VARIANT_INDEX=1086 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11082 KO Index 1087" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1087 LAST_VARIANT_INDEX=1087 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11090 KO Index 1095" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1095 LAST_VARIANT_INDEX=1095 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11095 KO Index 1100" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1100 LAST_VARIANT_INDEX=1100 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11102 KO Index 1107" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1107 LAST_VARIANT_INDEX=1107 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11112 KO Index 1115" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1115 LAST_VARIANT_INDEX=1115 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11135 KO Index 1136" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1136 LAST_VARIANT_INDEX=1136 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11138 KO Index 1139" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1139 LAST_VARIANT_INDEX=1139 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11143 KO Index 1144" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1144 LAST_VARIANT_INDEX=1144 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11158 KO Index 1158" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1158 LAST_VARIANT_INDEX=1158 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11167 KO Index 1167" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1167 LAST_VARIANT_INDEX=1167 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11168 KO Index 1168" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1168 LAST_VARIANT_INDEX=1168 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11169 KO Index 1169" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1169 LAST_VARIANT_INDEX=1169 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11172 KO Index 1171" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1171 LAST_VARIANT_INDEX=1171 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11175 KO Index 1174" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1174 LAST_VARIANT_INDEX=1174 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11176 KO Index 1175" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1175 LAST_VARIANT_INDEX=1175 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11177 KO Index 1176" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1176 LAST_VARIANT_INDEX=1176 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11189 KO Index 1187" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1187 LAST_VARIANT_INDEX=1187 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11190 KO Index 1188" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1188 LAST_VARIANT_INDEX=1188 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11194 KO Index 1192" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1192 LAST_VARIANT_INDEX=1192 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11195 KO Index 1193" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1193 LAST_VARIANT_INDEX=1193 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11198 KO Index 1196" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1196 LAST_VARIANT_INDEX=1196 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11202 KO Index 1199" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1199 LAST_VARIANT_INDEX=1199 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11204 KO Index 1201" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1201 LAST_VARIANT_INDEX=1201 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11205 KO Index 1202" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1202 LAST_VARIANT_INDEX=1202 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11221 KO Index 1216" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1216 LAST_VARIANT_INDEX=1216 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11223 KO Index 1218" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1218 LAST_VARIANT_INDEX=1218 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11225 KO Index 1220" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1220 LAST_VARIANT_INDEX=1220 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11226 KO Index 1221" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1221 LAST_VARIANT_INDEX=1221 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11227 KO Index 1222" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1222 LAST_VARIANT_INDEX=1222 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11228 KO Index 1223" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1223 LAST_VARIANT_INDEX=1223 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11229 KO Index 1224" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1224 LAST_VARIANT_INDEX=1224 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11231 KO Index 1226" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1226 LAST_VARIANT_INDEX=1226 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11232 KO Index 1227" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1227 LAST_VARIANT_INDEX=1227 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11234 KO Index 1229" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1229 LAST_VARIANT_INDEX=1229 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11239 KO Index 1234" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1234 LAST_VARIANT_INDEX=1234 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11245 KO Index 1238" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1238 LAST_VARIANT_INDEX=1238 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11258 KO Index 1250" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1250 LAST_VARIANT_INDEX=1250 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11259 KO Index 1251" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1251 LAST_VARIANT_INDEX=1251 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG11265 KO Index 1256" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=1256 LAST_VARIANT_INDEX=1256 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr0904/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr0904/wholecell2/wcEcoli/runscripts/fw_queue.py

## Launch Rockets to collect the FireWorks (created by fw_queue.py) from the Launchpad (MongoDB hosted on MLab via Heroku) and run them on the Queue (BlueCrystal)
qlaunch -r -l my_launchpad.yaml -w my_fworker.yaml -q my_qadapter.yaml rapidfire --nlaunches infinite --sleep 30 --maxjobs_queue 100 

