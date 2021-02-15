#!/bin/bash
#######################################################################
###                                                                 ###
###        !!! THIS SCRIPT COMES WITHOUT ANY WARRANTY!!!!!          ###
###                !!!REMEBER: THERE IS NO UNDO!!!                  ###
###                                                                 ###
### RECURIVELY FIND AND DELETE FILENAME OR DIRNAME inside DIRECTORY ###
###    eg: Sample or Proof / mypicturename.jpg                      ###
### BUILD FOR GLFTPD v1x/v2x                                        ###
###                                                                 ###
### Changelog......:                                                ###
###                                                                 ###
### 2021-01-02 Build v1.x  for remove unwanted directory names inside directory  ###
### 2021-02-15 Build v1.0a Updated/Changed "d" Dirname or "f" Filename    ###
###                                                                 ###
#######################################################################
###
##
## EDiT CONFIG OPTIONS BELOW GL PATH and DIRNAME
# Path to GLFTPD eg: glftpd/site
##

dirpath=glftpd/site/

##
# f = Filename to look for and delete it.
# d = Dirname to look for and delete it.
##

filetype="f"

###
# CaSe SENSITIVE
# Dirname or Filename to look for and delete it.
##

dirname="*.jpeg"

###
# SPAM THE TERMiNAL: YES "\;" or NO "+"
##

spam=\;
#spam=+

########### END OF CONFIG ##############

echo "finding $dirname please wait..."

find /$dirpath -name "$dirname" -type $filetype -exec rm -rf {} $spam

echo "Removed all $dirname directorys/filenames from site... done!"
