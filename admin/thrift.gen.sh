#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/..
set -x
if [ -d app/gen-nodejs ]; then
    rm -rf app/gen-nodejs
fi
thrift -r --gen js:node -o app proto/tutorial.thrift
