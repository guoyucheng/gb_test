#!/usr/bin/env bash
CURDIR=`pwd`
OLDGOPATH="$GOPATH"
echo "$OLDGOPATH"
export GOPATH="$CURDIR"
export PATH=$PATH:$GOPATH/bin
gofmt -w src
rm -rf bin/hello_word
gb build hello_word/ 
./bin/hello_word
