#!/bin/bash
#######################################################################
###                                                                 ###
###        !!! THIS SCRIPT COMES WITHOUT ANY WARRANTY!!!!!          ###
###                !!!REMEBER: THERE IS NO UNDO!!!                  ###
###                                                                 ###
### REMOVES DIRECTORY FROM inside DIRECTORY.. eg: Sample or Proof   ###
### BUILD FOR GLFTPD v1x/v2x                                        ###
###                                                                 ###
### Changelog......:                                                ###
###                                                                 ###
### 2021-01-02 Build v1.x for remove unwanted directory names inside directory  ###
###                                                                 ###
#######################################################################
###
##
## EDiT CONFIG OPTIONS BELOW GL PATH and DIRNAME
# Path to GLFTPD eg: glftpd/site
##

dirpath=jail/glftpd/site

##
# Dirnames are in "CaSe SENSITIVE"
# Change "TeST" to look for and delete it.
##

dirname="TeST"

##
# SPAM THE TERMiNAL YES "\;" or NO "+"
##

spam=\;
#spam=+


########### END OF CONFIG ##############

echo "finding $dirname please wait..."
sleep 3

find /$dirpath -name "$dirname" -type d -exec rm -rf {} $spam

sleep 3
echo "Removed all $dirname directorys from site... done!"