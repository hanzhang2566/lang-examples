package compare

import (
	"github.com/stretchr/testify/assert"
	"sync"
	"testing"
)

// 对比 Mutex 和 Chan
func TestSyncMutex(t *testing.T) {
	group := sync.WaitGroup{}
	group.Add(1000000)

	for i := 0; i < 1000000; i++ {
		go SyncMutex(&group)
	}
	group.Wait()
	assert.Equal(t, 1000000, csm)
}

func TestSyncChan(t *testing.T) {
	group := sync.WaitGroup{}
	group.Add(1000000)

	for i := 0; i < 1000000; i++ {
		go SyncChan(&group)
	}
	group.Wait()
	assert.Equal(t, 1000000, csc)
}
