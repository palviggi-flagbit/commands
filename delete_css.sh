#!/usr/bin/env bash

files=${1:-*}

#if [[ $files -eq '-h' ]] ; then
#    echo 'Usage: delete_css [less filename without ext]'
#	echo 'It will remove all the compiled css files and less intermediate files'
#	echo 'if a name is given, it will remove the compiled css and only the less indicated'
#   exit 0
#fi



find pub -name styles-?.* -exec rm {} +
find var -name styles-?.* -exec rm {} +
find var -name $files.less -exec rm {} +