#!/usr/bin/env sh
find pub -name styles-?.* -exec rm {} +
find var -name styles-?.* -exec rm {} +
find var -name *.less -exec rm {} +