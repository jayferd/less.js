#!/usr/bin/env bash

# -*- linked files -*- #
INFILE=./test/lessc/linked-function.less
EXPECTED=./test/lessc/linked-function.css
OUTFILE=./tmp/linked-function.$$.css
LINKFILE=./test/lessc/linked-function.js

mkdir -p tmp
./bin/lessc --link-file=$LINKFILE $INFILE $OUTFILE

# assert the out put is as expected
diff -u $OUTFILE $EXPECTED || exit 1

rm $OUTFILE
