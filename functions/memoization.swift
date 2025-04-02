class Memoizer {
    var cache: [Int: Int] = [:]

    func fib(n: Int) -> Int {
        if let cached = cache[n] {
            return cached
        }
        if n <= 1 {
            return n
        }
        let val = fib(n: n - 1) + fib(n: n - 2)
        cache[n] = val
        return val
    }
}

func memoize() {
    let m = Memoizer()
    print("Fib 10:", m.fib(n: 10))
    print("Fib 20:", m.fib(n: 20))
}

memoize()
