// Exercise : Find the First 5 Prime Numbers Between 2 and 100 using for loop
// - A prime number has no divisors other than 1 and itself.
// - Inner loop checks divisibility.
// - We keep track of how many primes we’ve printed and stop at 5.

var primeCount = 0

for number in 2...100 {
    var isPrime = true
    for i in 2..<number {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
    
    if isPrime {
        print(number)
        primeCount += 1
    }
    
    if primeCount == 5 {
        break
    }
}
// Output:
// 2
// 3
// 5
// 7
// 11
