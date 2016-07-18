package shift

import (
	"math/rand"
	"testing"
)

func BenchmarkRange1(b *testing.B) {
	M := 1000
	r := make([]uint, M)
	for i := range r {
		r[i] = uint(rand.Intn(12345678))
	}
	a := make([]uint, M)

	for i := 0; i < b.N; i++ {
		var sum uint
		copy(a, r)
		for j := range a {
			sum += a[j]
		}
	}
}

func BenchmarkRange2(b *testing.B) {
	M := 1000
	r := make([]uint, M)
	for i := range r {
		r[i] = uint(rand.Intn(12345678))
	}
	a := make([]uint, M)

	for i := 0; i < b.N; i++ {
		var sum uint
		copy(a, r)
		for _, v := range a {
			sum += v
		}
	}
}
