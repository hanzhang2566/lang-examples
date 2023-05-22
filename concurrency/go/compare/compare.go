package compare

import (
	"sync"
)

var csm = 0
var mu sync.Mutex

func SyncMutex(wg *sync.WaitGroup) {
	mu.Lock()
	defer mu.Unlock()
	wg.Done()
	csm++
}

var csc = 0
var c = make(chan struct{}, 1)

func SyncChan(wg *sync.WaitGroup) {
	c <- struct{}{}
	wg.Done()
	csc++
	<-c
}
