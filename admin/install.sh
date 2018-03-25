#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
echo "Only work for mac"
echo "install thrift 0.10.0 ..."
brew unlink thrift
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/16ebe5f1843e6cb54856311ff0f676be53007329/Formula/thrift.rb

echo "install node packages ..."
cd $baseDir/../app
npm i
