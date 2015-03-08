#!/bin/bash - 
set -o nounset

rsync -Privat ./public/* kyle@kyleterry.com:/var/www/kyleterry.com/
