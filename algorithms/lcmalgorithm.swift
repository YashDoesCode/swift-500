struct LCM {
    func gcd(a: Int, b: Int) -> Int {
        return b == 0 ? a : gcd(a: b, b: a % b)
    }
    func compute(a: Int, b: Int) -> Int {
        return (a * b) / gcd(a: a, b: b)
    }
}

func compute() {
    let l = LCM()
    print("LCM(12, 18):", l.compute(a: 12, b: 18))
}

compute()
