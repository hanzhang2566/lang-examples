package main

import (
	"fmt"
	"time"
)

// 协程是用户级线程
func main() {
	go func(delay time.Duration) {
		for {
			for _, r := range `-\|/` {
				fmt.Printf("\t\r%c", r)
				time.Sleep(delay)
			}
		}
	}(500 * time.Millisecond)

	fib(45)
}

func fib(x int) int {
	if x < 2 {
		return x
	}

	return fib(x-1) + fib(x-2)
}
