struct Sieve {
    func primes(upTo limit: Int) -> [Int] {
        guard limit >= 2 else { return [] }
        var isPrime = Array(repeating: true, count: limit + 1)
        isPrime[0] = false
        isPrime[1] = false
        var p = 2
        while p * p <= limit {
            if isPrime[p] {
                var multiple = p * p
                while multiple <= limit {
                    isPrime[multiple] = false
                    multiple += p
                }
            }
            p += 1
        }
        return (2...limit).filter { isPrime[$0] }
    }
}

func generate() {
    let s = Sieve()
    print("Primes up to 30:", s.primes(upTo: 30))
}

generate()
