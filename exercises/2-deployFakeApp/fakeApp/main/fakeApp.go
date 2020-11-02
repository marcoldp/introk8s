package main

import (
	"fmt"
	"net/http"
)

// Creates server acessible using http://localhost:8080/api/fakeapp
func main() {
	// ServeMux is an HTTP request multiplexer.
	// It matches the URL of each incoming request against a list of registered patterns and calls the handler for the pattern that most closely matches the URL.
	handler := http.NewServeMux()
	handler.HandleFunc("/api/fakeapp", AppHandler)
	// Listen to all request to port 8080.
	http.ListenAndServe("0.0.0.0:8080", handler)
}

// AppHandler handles the request for the endpoint /api/fakeapp
func AppHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, `Fake App Test`)
}
