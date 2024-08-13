// This sample code implement a simple web service.
package main

import (
	"github.com/handlers/handlers"
	"log"
	"net/http"
)

// main is the entry point for the application.
func main() {
	handlers.Routes()

	log.Println("listener : Started : Listening on :4000")
	http.ListenAndServe(":4000", nil)
}
