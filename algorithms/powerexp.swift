struct FastExponentiation {
    func power(base: Int, exponent: Int) -> Int {
        if exponent == 0 { return 1 }
        let half = power(base: base, exponent: exponent / 2)
        if exponent % 2 == 0 {
            return half * half
        } else {
            return base * half * half
        }
    }
}

func calculate() {
    let fe = FastExponentiation()
    print("2^10:", fe.power(base: 2, exponent: 10))
}

calculate()
