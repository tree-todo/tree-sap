#!/bin/sh
./gowiki &

sleep 1

curl --data-binary @wiki.go localhost:8080
curl localhost:8080 >wiki.go.copy
cmp wiki.go wiki.go.copy
