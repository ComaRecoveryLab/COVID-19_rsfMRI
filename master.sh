#!/bin/bash

#
# Master launch script for CONN batch script processing
#

mkdir ./generatedFiles
rsync conn_master.m ./generatedFiles/
rsync SubjectList.txt ./generatedFiles/
cd generatedFiles
matlab -nodesktop -r "run conn_master" > output.txt &
