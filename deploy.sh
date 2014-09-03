#!/bin/bash - 
#===============================================================================
#
#          FILE: deploy.sh
# 
#         USAGE: ./deploy.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Dr. Fritz Mehner (fgm), mehner.fritz@fh-swf.de
#  ORGANIZATION: FH Südwestfalen, Iserlohn, Germany
#       CREATED: 09/03/2014 01:33
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

rsync -Privat ./* kyle@kyleterry.com:/var/www/kyleterry.com/
