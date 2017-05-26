package shift

import (
	"math/rand"
	"testing"
)

func BenchmarkSlice(b *testing.B) {
	M := 1000
	r := make([]int, M)
	for i := range r {
		r[i] = rand.Intn(600)
	}

	b.ResetTimer()
	distinct := 0
	for i := 0; i < b.N; i++ {
		seen := make([]bool, M)
		for _, v := range r {
			if !seen[v] {
				seen[v] = true
				distinct++
			}
		}
	}
}

func BenchmarkMap(b *testing.B) {
	M := 1000
	r := make([]int, M)
	for i := range r {
		r[i] = rand.Intn(600)
	}

	b.ResetTimer()
	distinct := 0
	for i := 0; i < b.N; i++ {
		seen := make(map[int]bool, M)
		for _, v := range r {
			seen[v] = true
		}
		distinct += len(seen)
	}
}
