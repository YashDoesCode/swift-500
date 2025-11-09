struct Primality {
    func isPrime(n: Int) -> Bool {
        guard n > 1 else { return false }
        var d = 2
        while d * d <= n {
            if n % d == 0 { return false }
            d += 1
        }
        return true
    }
}

func test() {
    let p = Primality()
    print("29 is prime:", p.isPrime(n: 29))
    print("30 is prime:", p.isPrime(n: 30))
}

test()
