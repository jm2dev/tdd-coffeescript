#!/bin/sh
echo 'Delete js files.'
find . -iname '*.js' | xargs rm
