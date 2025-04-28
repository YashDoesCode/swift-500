func andCombinator<T>(_ f: @escaping (T) -> Bool, _ g: @escaping (T) -> Bool) -> (T) -> Bool {
    return { x in f(x) && g(x) }
}

func isPositive(n: Int) -> Bool { return n > 0 }
func isEven(n: Int) -> Bool { return n % 2 == 0 }

func combine() {
    let isPositiveAndEven = andCombinator(isPositive, isEven)
    print("4 is positive and even:", isPositiveAndEven(4))
    print("-2 is positive and even:", isPositiveAndEven(-2))
}

combine()
