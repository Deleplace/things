package main

import (
	"bufio"
	"bytes"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

var chain = map[string][]string{}

func index(filename string) {
	r, err := os.Open(filename)
	if err != nil {
		panic(err)
	}
	scanner := bufio.NewScanner(r)
	scanner.Split(bufio.ScanWords)

	// Prefixes are 2-words, suffixes are 1-word
	// Sliding triplet a,b,c
	a, b, c := "", "", ""

	n := 0
	for {
		ok := scanner.Scan()
		if !ok {
			if err := scanner.Err(); err == nil {
				// All input text done :)
				//fmt.Println("Indexed", n, "words\n")
				break
			} else {
				panic(err)
			}
		}
		word := scanner.Text()
		if exclude(word) {
			continue
		}
		n++
		a, b, c = b, c, word
		prefix := a + " " + b
		suffix := c
		chain[prefix] = append(chain[prefix], suffix)
	}
}

func exclude(word string) bool {
	return strings.ContainsAny(word, "0123456789")
}

func generate(first, second string, m int) {
	var text bytes.Buffer
	text.WriteString(first + " " + second)
	a, b := first, second
	for i := 2; i < m || !strings.HasSuffix(b, "."); i++ {
		prefix := a + " " + b
		candidates := chain[prefix]
		suffix := candidates[rand.Intn(len(candidates))]
		text.WriteString(" " + decorate(suffix))
		a, b = b, suffix
	}
	text.WriteTo(os.Stdout)
}

func decorate(word string) string {
	if strings.Contains(word, "—") {
		return "\n\n" + word
	}
	return word
}

func main() {
	if len(os.Args) < 3 {
		fmt.Fprintln(os.Stderr, "Usage: markov_words <textfile> <nb words output>")
		os.Exit(1)
	}
	index(os.Args[1])
	m, err := strconv.Atoi(os.Args[2])
	if err != nil {
		panic(err)
	}

	rand.Seed(time.Now().UnixNano())
	generate("Le", "premier", m)
}
