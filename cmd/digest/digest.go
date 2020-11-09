package main

import (
	"flag"
	"fmt"
	"log"

	"github.com/golang/dep/gps/verify"
)

func main() {
	path := flag.String("path", ".", "path to directory for digest compute")
	flag.Parse()

	digest, err := verify.DigestFromDirectory(*path)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(digest)
}
