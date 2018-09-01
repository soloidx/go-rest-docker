package main

import (
	"net/http"
	"github.com/gorilla/mux"
	"log"
	"fmt"
)

func main(){
	router := mux.NewRouter()
	router.HandleFunc("/home", handleHome).Methods("GET")
	log.Fatal(http.ListenAndServe(":8000", router))
}

func handleHome(w http.ResponseWriter, r *http.Request){
	fmt.Fprintf(w, "Hello, world!")
}
