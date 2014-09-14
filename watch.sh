#!/bin/bash - 
#===============================================================================
#
#          FILE: watch.sh
# 
#         USAGE: ./watch.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Kyle Terry, code.site@kyleterry.com
#       CREATED: 09/13/2014 20:09
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

python -m SimpleHTTPServer
