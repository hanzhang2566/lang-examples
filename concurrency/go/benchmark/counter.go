package benchmark

import (
	"sync"
)

var csm = 0

var mu sync.Mutex

func Counter(wg *sync.WaitGroup) {
	mu.Lock()
	defer mu.Unlock()
	wg.Done()
	csm++
}
