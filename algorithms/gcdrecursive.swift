struct EuclidGCD {
    func gcd(a: Int, b: Int) -> Int {
        if b == 0 { return a }
        return gcd(a: b, b: a % b)
    }
}

func compute() {
    let eg = EuclidGCD()
    print("GCD(48, 18):", eg.gcd(a: 48, b: 18))
}

compute()
