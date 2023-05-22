package bank

var balance int

func deposit(amount int) {
	balance += amount
}

func remain() int {
	return balance
}
