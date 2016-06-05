package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"strings"
	"sync"
)

var nbConcurrent = 4

var workerWG sync.WaitGroup

func main() {
	if len(os.Args) < 2 {
		fmt.Fprintln(os.Stderr, "Usage: deadlinks <file with URLs>")
		os.Exit(1)
	}
	filename := os.Args[1]

	queue := make(chan string)
	results := make(chan int, nbConcurrent)

	tested, dead := 0, 0

	go readURls(filename, queue, &tested)

	workerWG.Add(nbConcurrent)
	for i := 0; i < nbConcurrent; i++ {
		go worker(queue, results)
	}
	go func() {
		workerWG.Wait()
		close(results)
	}()

	for m := range results {
		dead += m
	}

	fmt.Println("Tested", tested, " URLs, found", dead, "dead links.")
}

func test(url string, results chan<- int) {
	res, err := http.Get(url)
	if err != nil {
		fmt.Fprintf(os.Stderr, "\nError fetching [%v]: %v\n", url, err)
		results <- 1
		return
	}
	if res.StatusCode < 200 || res.StatusCode > 299 {
		fmt.Fprintf(os.Stderr, "\nError fetching [%v]: response code %d\n", url, res.StatusCode)
		results <- 1
		return
	}
	fmt.Print("OK ")
	results <- 0
}

func worker(inputURLs <-chan string, results chan<- int) {
	for url := range inputURLs {
		test(url, results)
	}
	workerWG.Done()
}

func readURls(filename string, ch chan<- string, count *int) error {
	b, err := ioutil.ReadFile(filename)
	if err != nil {
		return err
	}
	URLs := strings.Split(string(b), "\n")
	for _, url := range URLs {
		if strings.TrimSpace(url) != "" {
			ch <- url
		}
		*count++
	}
	close(ch)
	return nil
}
