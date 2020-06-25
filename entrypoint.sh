#!/bin/sh -l

curl https://api.csswg.org/bikeshed/ -F file=@$1 > $2
