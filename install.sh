#!/usr/bin/env bash

if [ ! -f install.sh ]; then
echo 'install must be run within its container folder' 1>&2
exit 1
fi

CURDIR=`pwd`
OLDGOPATH="$GOPATH"
echo "$OLDGOPATH"
export GOPATH="$CURDIR"
export PATH=$PATH:$GOPATH/bin
gofmt -w src
go get github.com/constabulary/gb/...
gb vendor fetch gopkg.in/gin-gonic/gin.v1

export GOPATH="$OLDGOPATH"
echo 'finished'
