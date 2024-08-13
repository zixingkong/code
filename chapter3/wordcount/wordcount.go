// Sample program to show how to show you how to briefly work with io.
package main

import (
	"fmt"
	"github.com/chapter3/words"
	"io/ioutil"
)

// main is the entry point for the application.
func main() {
	//filename := os.Args[1]
	filename := "wordcount/gowords.txt"

	contents, err := ioutil.ReadFile(filename)
	if err != nil {
		fmt.Println("There was an error opening the file:", err)
		return
	}

	text := string(contents)

	count := words.CountWords(text)
	fmt.Printf("There are %d words in your text. \n", count)
}
