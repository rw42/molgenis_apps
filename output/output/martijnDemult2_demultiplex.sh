#!/bin/bash
#PBS -q cluster
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:16:00
#PBS -l mem=10gb
#PBS -e blaat/err/err_martijnDemult2_demultiplex.err
#PBS -o blaat/out/out_martijnDemult2_demultiplex.out
mkdir -p blaat/err
mkdir -p blaat/out
printf "martijnDemult2_demultiplex_started " >>blaat/log_.txt
date "+DATE: %m/%d/%y%tTIME: %H:%M:%S" >>blaat/log_.txt
date "+start time: %m/%d/%y%t %H:%M:%S" >>blaat/extra/martijnDemult2_demultiplex.txt
echo running on node: `hostname` >>blaat/extra/martijnDemult2_demultiplex.txt

#INPUTS 
#OUTPUTS
#EXEC
#TARGETS lane, sequencer, sequencingStartDate, run, flowcell

flowcell: flowcell
sample: [testsample3]

# determine number of elements
15




printf "martijnDemult2_demultiplex_finished " >>blaat/log_.txt
date "+finish time: %m/%d/%y%t %H:%M:%S" >>blaat/extra/martijnDemult2_demultiplex.txt
date "+DATE: %m/%d/%y%tTIME: %H:%M:%S" >>blaat/log_.txt
