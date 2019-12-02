#!/usr/bin/env bash
if [[ $# -eq 0 ]] ; then
    echo 'Usage: new_branch <branch name> [<base remote>] [<branch prefix>]'
	echo '<base remote> defaults to master'
	echo '<branch prefix> defaults to feature'
    exit 0
fi

git fetch
git checkout --no-track -b ${3:-feature}/$1 origin/${2:-master}