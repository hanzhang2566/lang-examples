package benchmark

import (
	"github.com/stretchr/testify/assert"
	"sync"
	"testing"
)

// 对比 Java 的实现
func TestCounter(t *testing.T) {
	group := sync.WaitGroup{}
	group.Add(100000)

	for i := 0; i < 100000; i++ {
		go Counter(&group)
	}
	group.Wait()
	assert.Equal(t, 100000, csm)
}
