package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
)

func data(w http.ResponseWriter, req *http.Request) {
	id := req.URL.Query()["id"][0]
	resp, _ := http.Get("http://192.168.4.68?id=" + id)
	body, _ := ioutil.ReadAll(resp.Body)
	fmt.Fprintf(w, string(body))
}

func housing_service(w http.ResponseWriter, req *http.Request) {
	id := req.URL.Query()["id"][0]
	resp, _ := http.Get("http://192.168.4.67?id=" + id)
	body, _ := ioutil.ReadAll(resp.Body)
	fmt.Fprintf(w, string(body))
}

func work_service(w http.ResponseWriter, req *http.Request) {
	id := req.URL.Query()["id"][0]
	resp, _ := http.Get("http://192.168.4.69?id=" + id)
	body, _ := ioutil.ReadAll(resp.Body)
	fmt.Fprintf(w, string(body))
}

func main() {
	http.HandleFunc("/data", data)
	http.HandleFunc("/housing-service", housing_service)
	http.HandleFunc("/work-service", work_service)

	err := http.ListenAndServe(os.Getenv("my_ip")+":80", nil)

	if err != nil {
		log.Fatal(err)
	}
}
