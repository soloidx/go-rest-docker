#! /bin/bash

#START OMIT
mkdir project
touch main.go

# edit main.go here

dep init
dep ensure -add github.com/gorilla/mux

#END OMIT
